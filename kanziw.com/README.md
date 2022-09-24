# kanziw.com

## Initizlie

```zsh
$ terraform init
```

Configure Environments into `.env`
- see [.env.example](.env.example) as example
- required token permissions: `Zone.DNS`


## Import Cloudflare resources

Install tools

```zsh
$ brew tap cloudflare/cloudflare
$ brew install --cask cloudflare/cloudflare/cf-terraforming
```


Import resources

```zsh
$ cf-terraforming generate \
  --resource-type cloudflare_record \
  --token $CLOUDFLARE_API_TOKEN \
  --zone $TF_VAR_zone_id \
  > records.tf
```


Import Terraform state into local

```zsh
cf-terraforming import \
  --resource-type cloudflare_record \
  --token $CLOUDFLARE_API_TOKEN \
  --zone $TF_VAR_zone_id
```


Check sync

```zsh
$ terraform plan
...

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.
```
