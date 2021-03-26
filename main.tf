provider "aws" {
  region = "eu-west-1" // Ireland

  profile = "TERRAFORM"
}

resource "random_string" "random" {
  length  = 10
  special = false
  upper   = false
}

module "s3_website" {
  source = "./modules/s3-website"

  bucket_name = random_string.random.id
}

module "cloud_front" {
  source = "./modules/cloudfront"

  bucket_website_endpoint = module.s3_website.website_endpoint

  depends_on = [module.s3_website]
}