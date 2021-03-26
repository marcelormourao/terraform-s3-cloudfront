data "template_file" "policy_template" {
  template = file("${path.module}/public_bucket_policy.template")
  vars = {
    bucket_name = var.bucket_name
  }
}

resource "aws_s3_bucket" "web_bucket" {
  
  bucket = var.bucket_name
  
  acl    = "public-read"

  policy =  data.template_file.policy_template.rendered

  website {
    index_document = "index.html"
    error_document = "index.html"
  }

  tags = var.tags
}

resource "aws_s3_bucket_object" "uploadfile" {
  bucket = aws_s3_bucket.web_bucket.id
  
  key     = "index.html"

  acl     = "public-read"

  content_type = "text/html"

  source  = "${path.module}/dist/index.html"
}