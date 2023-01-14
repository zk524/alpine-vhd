## Linux

- install
  - qemu-system-x86-64
  - packer
- command
  - `packer build qemu.json`
  - `qemu-img convert -f raw -O vpc -o subformat=fixed,force_size alpine.raw alpine.vhd`

# Windows

- pre
  - packer.exe
  - hyper-V enabled
- command
  - `packer.exe build hyperv.json`
  - update the generated vhd
