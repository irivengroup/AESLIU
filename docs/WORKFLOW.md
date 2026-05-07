# UIP Workflow

Execution flow:

```text
uip-common
uip-discovery
  -> uip-lock
  -> uip-repos
uip-snapshot
uip-precheck
  -> uip-update
uip-remediate
uip-upgrade
  -> uip-reboot
uip-postcheck
uip-report
```

`uip-lock` is called first by `uip-discovery`.
`uip-repos` is called by `uip-discovery`.
`uip-update` is called by `uip-precheck`.
