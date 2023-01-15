## Linux

- pre
  - qemu-system-x86-64
  - packer
- command
  - `packer build qemu.json`
  - `qemu-img convert -f raw -O vpc -o subformat=fixed,force_size output-qemu/alpine alpine.vhd`
- shell
  - run.sh

## Windows

- pre
  - [packer.exe](https://developer.hashicorp.com/packer/downloads)
  - [hyper-V enabled](https://learn.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v): `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All`
- command
  - `packer.exe build hyperv.json`
- batch
  - run.bat

## Resize disk

- Boot the vm
- `echo -e 'resizepart 2 100%' | parted /dev/sda`
- `resize2fs /dev/sda2`
