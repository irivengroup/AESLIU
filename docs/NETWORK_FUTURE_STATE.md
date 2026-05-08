# Future Network State

UIP prepares the future network state after OS package upgrade and before reboot.

The workflow runs from `uip-upgrade` before `uip-reboot`.

It detects:

- next boot network manager
- predictable interface names using `udevadm test-builtin net_id`
- active routes
- IP addressing
- naming overrides such as `net.ifnames=0`
- enabled network services

It prepares per ecosystem:

- RHEL: future `ifcfg-*` files and NetworkManager reload
- Debian: ifupdown aliases for predicted names
- Ubuntu: netplan files for predicted names and `netplan generate`
- SUSE: future `ifcfg-*` files

After reboot, `uip-postcheck` removes stale legacy interface configuration only
when the predicted interface is active.
