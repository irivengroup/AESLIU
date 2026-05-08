# Bootability Layout

Boot sanity checks have been merged into bootability files.

The rule remains:

```text
ecosystem -> OS/version path
```

Current layout:

```text
roles/uip-remediate/tasks/tasks.d/rhel/bootability.yml
roles/uip-remediate/tasks/tasks.d/rhel/bootability_rhel6_to_7.yml
roles/uip-remediate/tasks/tasks.d/rhel/bootability_leapp.yml
roles/uip-remediate/tasks/tasks.d/debian/bootability.yml
roles/uip-remediate/tasks/tasks.d/ubuntu/bootability.yml
roles/uip-remediate/tasks/tasks.d/suse/bootability.yml
```

No separate `boot_sanity` files are used.
