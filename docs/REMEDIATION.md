# UIP Remediation

`uip-remediate` performs idempotent pre-upgrade remediation:

- backs up `/etc/fstab`
- comments active network mounts with `##-UIP-##`
- consumes the critical filesystem report from `uip-precheck`
- attempts LVM online expansion for non-`/boot` filesystems in `ko`
- fails with grouped unresolved filesystem constraints
- cleans obsolete kernels and modules
- detects GRUB version and boot mode
- regenerates GRUB configuration for BIOS/UEFI contexts
- fixes known inhibitors per ecosystem

`uip-postcheck` restores the original `/etc/fstab` from:

```text
/etc/before-uip.fstab.original
```
