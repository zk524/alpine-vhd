#! /bin/bash

apt-get update && apt-get install packer qemu-system-x86-64
packer build qemu.json
qemu-img convert -f raw -O vpc -o subformat=fixed,force_size output-qemu/alpine alpine.vhd
