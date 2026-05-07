# Precheck Filesystem Collection

`uip-precheck` collects filesystem information for critical paths without failing the run.

Critical filesystems and default thresholds:

```text
/     -> 8192 MB
/boot -> 512 MB
/var  -> 6144 MB
/tmp  -> 4096 MB
```

The generated report includes:

- filesystem name
- path
- actual free space in MB
- verification status: `ok` or `ko`
- minimum required free space in MB
- mount point
- filesystem type

The report is stored in:

```text
{{ uip_report_dir }}/precheck-filesystems.yml
{{ uip_state_file }}
```

Constraint enforcement is intentionally deferred to `uip-remediate`.
