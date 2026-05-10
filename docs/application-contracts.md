[← Retour à l’index](index.md)

**Breadcrumbs :** Index → Application Dependency Contracts

# Application Dependency Contracts

Application Dependency Contracts are implemented in the dedicated `uip-agents` role.

The role is called by:

- `uip-precheck` with `uip_agents_phase: baseline`
- `uip-postcheck` with `uip_agents_phase: postcheck`

Contracts are declared in:

```text
roles/uip-common/vars/services.yml
```

## Supported contract types

| Type | Purpose |
|---|---|
| `systemd` | Validate a systemd unit is active |
| `tcp` | Validate a TCP endpoint is listening |
| `command` | Validate a custom command returns rc=0 |
| `mount` | Validate a mountpoint exists |
| `http` | Validate an HTTP health endpoint |

---

**Breadcrumbs :** Index → Application Dependency Contracts

[← Retour à l’index](index.md)

© IRIVEN Group — All Rights Reserved
