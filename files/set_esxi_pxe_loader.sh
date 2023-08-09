#!/bin/bash
# dans /usr/share/foreman/app/models/concerns/pxe_loader_support.rb
# ajouter
# "PXELinux Alt BIOS" => "syslinux386/pxelinux.0",
# après
# "PXELinux UEFI" => "pxelinux.efi",
sed 's/"PXELinux UEFI" => "pxelinux.efi",/"PXELinux UEFI" => "pxelinux.efi",\n\t"PXELinux Alt BIOS" => "syslinux386\/pxelinux.0",/' \
-i /usr/share/foreman/app/models/concerns/pxe_loader_support.rb