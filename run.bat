@echo off
rd /s /q output-hyperv-iso
packer.exe build hyperv.json

