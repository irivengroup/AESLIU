
# v35 filesystem notes

This version adds filesystem-oriented prechecks, cleanup, selective backups and optional local snapshot strategies.

Recommended production tuning:
- enable LVM snapshots only where free VG space is guaranteed
- use btrfs/zfs snapshots only when the root filesystem is actually backed by those technologies
- adjust /boot and inode thresholds per distro image standard
