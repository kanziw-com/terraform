# kanziw.com

## Initizlie

```zsh
$ terraform init
```

## Import Cloudflare resources

Install tools

```zsh
$ brew tap cloudflare/cloudflare
$ brew install --cask cloudflare/cloudflare/cf-terraforming
```


Import resources

```zsh
$ cf-terraforming generate \
  --token $CLOUDFLARE_API_TOKEN \
  --zone $TF_VAR_zone_id \
  --resource-type cloudflare_record > records.tf
```
