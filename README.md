# www.gormonjee.com

Public website for the Gormonjee health and nutrition initiative.

## Development

The website at present is a single page, stored in `index.html` with css in
`style.css` and images in the `images` folder.

DNS is managed using [Terraform](https://www.terraform.io/) with the
[Cloudflare Provider](https://www.terraform.io/docs/providers/cloudflare/index.html)

## Deployment

The website auto-deploys on pushes to the `gh-pages` branch.
