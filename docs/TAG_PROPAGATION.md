# Tag Propagation

Nested role calls keep the tags of their parent execution path.

Standalone role-specific tags remain removed:

```text
uip_lock
uip_repos
uip_reboot
uip_update
```

Those roles execute under the tags of their parent caller.
