# Stockage avancé et resize robuste

Ajouts v46 :
- mapping plus précis hyperviseur ↔ OS :
  - lsblk -J -O
  - blkid export
  - dmsetup tree
  - /dev/disk/by-id
  - /dev/disk/by-path
- support multi-disques et volumes non-root
- simulation avant extension
- rescans NVMe / SCSI
- reload multipath
- growpart / pvresize / lvextend / resize2fs / xfs_growfs
- validations réelles :
  - thin pools LVM
  - mdraid
  - multipath
  - LUKS
  - iSCSI / FC
  - btrfs subvolumes
  - ZFS datasets multiples
