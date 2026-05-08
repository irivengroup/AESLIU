# Bootloader Safety

UIP adds a transversal bootloader safety layer before ecosystem-specific GRUB remediation.

Transversal backup:

```text
roles/uip-remediate/tasks/tasks.d/bootloader_backup.yml
```

Captured data:

- `/etc/default/grub`
- `/boot/grub`
- `/boot/grub2`
- `/boot/loader`
- `/boot/efi/EFI`
- UEFI NVRAM entries with `efibootmgr -v`
- `grubby --default-kernel`
- `grubby --info=ALL`
- root/boot device inventory

Ecosystem GRUB files remain responsible for regeneration and validation.
