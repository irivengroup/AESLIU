# Snapshot / Backup Gate

UIP requires a VM snapshot before continuing for virtual machines.

Physical servers are detected and skipped.

Provider detection is local-only. UIP does not query cloud metadata HTTP
endpoints during detection. It uses:

```text
systemd-detect-virt
/sys/class/dmi/id/product_name
/sys/class/dmi/id/sys_vendor
/sys/class/dmi/id/chassis_asset_tag
/run/cloud-init/instance-data.json
```

Credentials are loaded automatically from:

```text
roles/uip-common/vars/._uipcreds.yml
```

Vault this file in production.

Snapshot state is persisted to:

```text
{{ uip_state_dir }}/snapshot.yml
```

Rollback reads this file to identify the provider and snapshot reference.
