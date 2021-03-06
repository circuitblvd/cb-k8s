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

FROM ubuntu:18.10

RUN apt-get update \
    && apt-get install -y \
        git \
        nvme-cli \
        net-tools \
        iputils-ping \
        sshpass \
        bc

# Dependencies for getting device information and load uio_pci_generic kernel module
RUN apt-get install -y \
        pciutils \
        kmod

WORKDIR /github

# Clone the SPDK repo
RUN git clone https://github.com/spdk/spdk.git

## Install dependencies for SPDK
RUN /github/spdk/scripts/pkgdep.sh

# Build some repos
RUN git -C /github/spdk submodule update --init
RUN cd /github/spdk && ./configure && make

# Clean Up
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# copy vhost sh file
RUN mkdir -p /work/vhosts
COPY files/createvh.sh /work/vhosts/ 

# Add run script
COPY run .
RUN chmod +x run

ENTRYPOINT ["./run"]
