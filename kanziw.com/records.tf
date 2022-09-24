resource "cloudflare_record" "terraform_managed_resource_430849162e814a764b9ab7646cdbc243" {
  name    = "doha"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "151.101.1.195"
  zone_id = var.zone_id 
}

resource "cloudflare_record" "terraform_managed_resource_89ee5a8b736235257c7e21f5476057ef" {
  name    = "doha"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "151.101.65.195"
  zone_id = var.zone_id 
}

resource "cloudflare_record" "terraform_managed_resource_2b561c6abf7a4acdad41374b641b1cd2" {
  name    = "kanziw.com"
  proxied = false
  ttl     = 1
  type    = "A"
  value   = "27.0.236.139"
  zone_id = var.zone_id 
}

resource "cloudflare_record" "terraform_managed_resource_c3138aa6a60de91a654aa09bc4822e9f" {
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "host.tistory.io"
  zone_id = var.zone_id 
}

resource "cloudflare_record" "terraform_managed_resource_5a248a7c905f5149ef9cfea335876b5b" {
  name    = "kanziw.com"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "google-site-verification=2zTBaDkQXfK7mqxVurwaKt8gflX1VBdl4-XsDqRI5vE"
  zone_id = var.zone_id 
}

