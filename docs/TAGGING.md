# UIP Tagging Model

Every task under `roles/*/tasks/**/*.yml` carries both:

1. a role-level functional tag, for example `uip_precheck`;
2. a workflow phase tag, for example `uip_preupgrade` or `uip_postupgrade`.

Nested orchestration tags are propagated as follows:

```text
uip-discovery
  -> uip-lock      tags: uip_discovery, uip_preupgrade
  -> uip-repos     tags: uip_discovery, uip_preupgrade

uip-precheck
  -> uip-update    tags: uip_precheck, uip_preupgrade

uip-upgrade
  -> uip-reboot    tags: uip_upgrade, uip_postupgrade

uip-postcheck
  -> uip-repos     tags: uip_postcheck, uip_postupgrade
```

This means a run using `--tags uip_preupgrade` executes all required nested
pre-upgrade tasks, and a run using `--tags uip_postupgrade` executes all required
post-upgrade tasks.
