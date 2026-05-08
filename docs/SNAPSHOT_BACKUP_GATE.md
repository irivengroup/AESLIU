# Snapshot / Backup Gate

UIP requires a VM snapshot before continuing for virtual machines.

Physical servers are detected and skipped.

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
