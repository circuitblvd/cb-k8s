#!/bin/bash
#
# BSD 3-Clause License
#
# Copyright (c) Circuit Blvd., Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, this
#    list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its
#    contributors may be used to endorse or promote products derived from
#    this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

getpodf=/tmp/`date "+%F-%T"`
kubectl get pods > $getpodf
tail -n +2 $getpodf > "$getpodf".1 # drop the first line

readarray pa < "$getpodf".1
echo "${#pa[@]}"" pod entries..."

cnt=1
dcnt=0
prev_ent=""
for line in "${pa[@]}"; do

    cur_ent=$(echo "$line" | sed 's/deployment.*/deployment/')
    if [ "$prev_ent" = "$cur_ent" ]; then
        dcnt=$((dcnt+1))
    else
        prev_ent="$cur_ent"
        dcnt=1
    fi 

    printf "%3d: %s%2d ==> " $cnt "$cur_ent" $dcnt 
    podid=$(echo "$line" | cut -d" " -f1)
    kubectl logs pods/$podid | tail -1
    
    cnt=$((cnt+1))
done

# cat file | tail -n +31 | head -n 1 # get line 31 from a file
