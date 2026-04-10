.PHONY: lint syntax

lint:
	ansible-lint
	yamllint .

syntax:
	ansible-playbook playbooks/linux_upgrade.yml --syntax-check
