# Vault and Rolling Upgrade Notes

- Rolling upgrades are controlled by:
  - linux_upgrade_rolling_enabled
  - linux_upgrade_rolling_serial
  - linux_upgrade_cluster_batch_precheck_commands
  - linux_upgrade_cluster_batch_postcheck_commands

- Vault integration uses community.hashi_vault lookup plugins to fetch KV v2 secrets.
