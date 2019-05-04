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

sudo ~/github/qemu-nvme/bin/qemu-system-x86_64 \
--enable-kvm -cpu host -smp 12 -m 8G \
-drive file=/home/cbuser/work/qemu/u1.qcow2,if=none,id=disk \
-device ide-hd,drive=disk,bootindex=0 \
-object memory-backend-file,id=mem0,size=8G,mem-path=/dev/hugepages,share=on \
-numa node,memdev=mem0 \
-virtfs local,path=/tmp/mm,mount_tag=host0,security_model=passthrough,id=host0 \
-net nic,macaddr=DE:AD:BE:EF:01:41 \
-net tap,ifname=tap0,script=q_br_up.sh,downscript=q_br_down.sh -vnc :2 \
-chardev socket,id=spdk_vhost_blk0,path=/var/tmp/vhost.0 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk0,num-queues=4 \
-chardev socket,id=spdk_vhost_blk1,path=/var/tmp/vhost.1 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk1,num-queues=4 \
-chardev socket,id=spdk_vhost_blk2,path=/var/tmp/vhost.2 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk2,num-queues=4 \
-chardev socket,id=spdk_vhost_blk3,path=/var/tmp/vhost.3 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk3,num-queues=4 \
-chardev socket,id=spdk_vhost_blk4,path=/var/tmp/vhost.4 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk4,num-queues=4 \
-chardev socket,id=spdk_vhost_blk5,path=/var/tmp/vhost.5 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk5,num-queues=4 \
-chardev socket,id=spdk_vhost_blk6,path=/var/tmp/vhost.6 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk6,num-queues=4 \
-chardev socket,id=spdk_vhost_blk7,path=/var/tmp/vhost.7 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk7,num-queues=4 \
-chardev socket,id=spdk_vhost_blk8,path=/var/tmp/vhost.8 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk8,num-queues=4 \
-chardev socket,id=spdk_vhost_blk9,path=/var/tmp/vhost.9 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk9,num-queues=4 \
-chardev socket,id=spdk_vhost_blk10,path=/var/tmp/vhost.10 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk10,num-queues=4 \
-chardev socket,id=spdk_vhost_blk11,path=/var/tmp/vhost.11 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk11,num-queues=4 \
-chardev socket,id=spdk_vhost_blk12,path=/var/tmp/vhost.12 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk12,num-queues=4 \
-chardev socket,id=spdk_vhost_blk13,path=/var/tmp/vhost.13 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk13,num-queues=4 \
-chardev socket,id=spdk_vhost_blk14,path=/var/tmp/vhost.14 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk14,num-queues=4 \
-chardev socket,id=spdk_vhost_blk15,path=/var/tmp/vhost.15 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk15,num-queues=4 \
-chardev socket,id=spdk_vhost_blk16,path=/var/tmp/vhost.16 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk16,num-queues=4 \
-chardev socket,id=spdk_vhost_blk17,path=/var/tmp/vhost.17 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk17,num-queues=4 \
-chardev socket,id=spdk_vhost_blk18,path=/var/tmp/vhost.18 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk18,num-queues=4 \
-chardev socket,id=spdk_vhost_blk19,path=/var/tmp/vhost.19 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk19,num-queues=4 \
-chardev socket,id=spdk_vhost_blk20,path=/var/tmp/vhost.20 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk20,num-queues=4 \
-chardev socket,id=spdk_vhost_blk21,path=/var/tmp/vhost.21 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk21,num-queues=4 \
-chardev socket,id=spdk_vhost_blk22,path=/var/tmp/vhost.22 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk22,num-queues=4 \
-chardev socket,id=spdk_vhost_blk23,path=/var/tmp/vhost.23 \
-device vhost-user-blk-pci,chardev=spdk_vhost_blk23,num-queues=4
