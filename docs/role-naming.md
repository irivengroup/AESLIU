[← Retour à l’index](index.md)

**Breadcrumbs :** Index → Role Naming

# Role Naming

Linux UIP roles use Ansible Galaxy-compatible snake_case role names.

The naming convention is:

```text
uip_ + lower(<rolename>)
```

Examples:

| Previous name | Current name |
|---|---|
| `uip-common` / `uipCommon` | `uip_common` |
| `uip-precheck` / `uipPrecheck` | `uip_precheck` |
| `uip-remediate` / `uipRemediate` | `uip_remediate` |
| `uip-postcheck` / `uipPostcheck` | `uip_postcheck` |
| `uip-rollback` / `uipRollback` | `uip_rollback` |

This satisfies the Ansible role name schema:

```text
^[a-z][a-zA-Z0-9_]+$
```

---

**Breadcrumbs :** Index → Role Naming

[← Retour à l’index](index.md)

© IRIVEN Group — All Rights Reserved
