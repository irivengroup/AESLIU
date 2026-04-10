# v19 features

## Rolling upgrade
- serial-based rolling execution
- canary batch size support
- quorum guards for pacemaker, kubernetes, openstack control plane
- stop-on-failure behavior should be enforced by Ansible batch failure semantics and user strategy

## Vault
- token auth
- AppRole auth variables
- JWT auth variables

## Suggested examples

### AppRole
```yaml
linux_upgrade_vault_enabled: true
linux_upgrade_vault_auth_method: approle
linux_upgrade_vault_url: https://vault.example.com
linux_upgrade_vault_role_id: "..."
linux_upgrade_vault_secret_id: "..."
linux_upgrade_vault_mount_point: approle
```

### JWT
```yaml
linux_upgrade_vault_enabled: true
linux_upgrade_vault_auth_method: jwt
linux_upgrade_vault_url: https://vault.example.com
linux_upgrade_vault_jwt: "{{ lookup('env', 'VAULT_JWT') }}"
linux_upgrade_vault_jwt_mount_point: jwt
```
