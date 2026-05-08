# RHEL Upgrade Coverage

UIP explicitly supports the complete RHEL chain:

```text
RHEL 6 -> 7 -> 8 -> 9 -> 10
```

RHEL 6 -> 7 is treated as a legacy path and must not be ignored.

Dedicated handling exists for:

- precheck: `roles/uip-precheck/tasks/tasks.d/rhel/rhel6_to_7.yml`
- upgrade: `roles/uip-upgrade/tasks/tasks.d/rhel/rhel6_to_7.yml`
- remediation: legacy inhibitor/tooling handling in `uip-remediate`

RHEL 7+ paths use Leapp-based handling.
