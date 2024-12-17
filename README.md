Try out terraform incus provider

This works

```bash
incus admin init --auto

# setup
git clone https://github.com/taylormonacelli/belowis
cd belowis
terraform init -upgrade
terraform apply -auto-aprove
incus exec my-instance -- cat /etc/os-release

# teardown
terraform destroy -auto-approve
```

- https://github.com/bketelsen/packer-plugin-incus/tree/main?tab=readme-ov-file#packer-plugin-incus
- https://github.com/taylormonacelli/biggestage
- https://github.com/lxc/terraform-provider-incus?tab=readme-ov-file#terraform-provider-incus
