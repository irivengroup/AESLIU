[← Retour à l’index](index.md)

**Breadcrumbs :** Index → Linting Policy

# Linting Policy

Linux UIP intentionally exposes a stable global variable namespace based on `uip_*`.

Because several roles cooperate through shared execution state, reports, rollback state, and operational facts, strict role-local variable prefixes would introduce breaking changes for inventory variables and existing automation.

The `var-naming[no-role-prefix]` rule is therefore skipped intentionally.

The project still enforces:

- YAML syntax
- ansible syntax-check
- production ansible-lint profile
- role metadata validation
- framework structure checks

---

**Breadcrumbs :** Index → Linting Policy

[← Retour à l’index](index.md)

© IRIVEN Group — All Rights Reserved
