#! /bin/bash

apt-get update && apt-get install -y packer qemu-system-x86-64
rm -rf output-qemu
rm -rf packer_cache
packer build qemu.json
qemu-img convert -f raw -O vpc -o subformat=fixed,force_size output-qemu/alpine alpine.vhd
