
# v36 structure

The `roles/linux_upgrade/tasks/tasks.d/operations` folder now keeps only primary orchestration modules, such as:
- cleanup.yml
- cluster.yml
- filesystem.yml
- middleware.yml
- network.yml
- postchecks.yml
- prechecks.yml
- pre_update.yml
- pre_upgrade.yml
- reboot.yml
- repos.yml
- rollback.yml
- snapshot.yml
- subscriptions.yml
- upgrade.yml

Detailed support submodules are now grouped under:
- operations/filesystem/
- operations/network/
- operations/platform/
