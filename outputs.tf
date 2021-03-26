output "bucket_name" {
  value = module.s3_website.bucket_name
}

output "cloud_front_domain_name" {
  value = module.cloud_front.domain_name
}