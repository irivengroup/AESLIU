# Bootloader Backup

UIP keeps a lightweight bootloader backup in addition to the external system backup.

This backup is not the primary rollback mechanism. It captures useful recovery
artifacts before bootloader remediation:

- `/etc/default/grub`
- `/boot/grub`
- `/boot/grub2`
- `/boot/loader`
- `/boot/efi/EFI`
- `efibootmgr -v`
- `grubby --default-kernel`
- `grubby --info=ALL`
- root/boot device inventory

The bootability checks remain separated by ecosystem and version.
