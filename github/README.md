# github

## Initialize

```zsh
$ terraform init
```

## Import GitHub resources

Import terraform state

```zsh
# terraform import github_repository.REPO_NAME REPO_NAME
$ terraform import github_repository.terraform terraform
```


Print current terraform state and use it at [repositories.tf](./repositories.tf)

```zsh
$ terraform show
```


Check sync

```zsh
$ terraform plan
Running plan in Terraform Cloud. Output will stream here. Pressing Ctrl-C
...

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration
and found no differences, so no changes are needed.
```
