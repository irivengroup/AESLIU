# Satellite Support Without Red Hat Satellite Collections

Linux UIP does not require the `redhat.satellite` collection.

Satellite repository switching is implemented directly on the managed host using:

- `subscription-manager identity`
- `subscription-manager status`
- `subscription-manager repos --disable=<repo>`
- `subscription-manager repos --enable=<repo>`
- `yum makecache` / `dnf makecache`

This makes the upgrade workflow autonomous in public CI, disconnected environments,
and execution environments where Red Hat certified collections are not available.

## Scope

The framework performs client-side repository enforcement.

It does not create or publish Satellite Content Views. Content Views, Lifecycle
Environments and Activation Keys must already exist on Satellite and must be
declared in:

```text
roles/uip-common/vars/main.yml
```

under:

```yaml
uip_repo_map:
  rhel:
    ...
      satellite:
        src_cv: ...
        dst_cv: ...
        src_lce: ...
        dst_lce: ...
        src_ak: ...
        dst_ak: ...
        repos_enable:
          - ...
        repos_disable:
          - ...
```

## Enterprise Recommendation

Content View publication and promotion should be handled by a separate platform
release pipeline. UIP should consume only already-approved repositories.
