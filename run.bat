@echo off
rd /s /q output-hyperv-iso
rd /s /q packer_cache
packer.exe build hyperv.json

