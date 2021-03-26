variable "bucket_website_endpoint" {
    type = string

    description = "Bucket Web Endpoint"
}

variable "comment" {
    type = string

    description = "Comment"

    default = ""
}

variable "price_class" {
    type = string

    description = "CloudFront Price Class"

    default = "PriceClass_100"
}

variable "tags" {
    type = map
    
    description = "CloudFront Distribution tags"

    default = {}
}




