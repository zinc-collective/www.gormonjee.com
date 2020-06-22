variable "cloudflare_email" {
  type = string
}


variable "cloudflare_api_key" {
  type = string
}

variable "cloudflare_zone_id" {
  type = string
  default = "2146e73eda755e4e0120758e1de41880"
}

provider "cloudflare" {
  version = "~> 2.0"
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}

# Create a record
resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  value   = "zinc-collective.github.io"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "gormonjee-com" {
  zone_id = var.cloudflare_zone_id
  name    = "gormonjee.com"
  value   = "www.gormonjee.com"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}