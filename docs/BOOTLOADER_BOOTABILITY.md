# Bootloader Bootability Checks

Bootability checks are separated by ecosystem and, where needed, by OS version path.

Layout:

```text
roles/uip-remediate/tasks/tasks.d/rhel/bootability.yml
roles/uip-remediate/tasks/tasks.d/rhel/bootability_rhel6_to_7.yml
roles/uip-remediate/tasks/tasks.d/rhel/bootability_leapp.yml
roles/uip-remediate/tasks/tasks.d/debian/bootability.yml
roles/uip-remediate/tasks/tasks.d/ubuntu/bootability.yml
roles/uip-remediate/tasks/tasks.d/suse/bootability.yml
```

RHEL `6 -> 7` is handled separately from Leapp-based RHEL paths.
