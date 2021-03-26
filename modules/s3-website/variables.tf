variable "bucket_name" {
    type = string

    description = "Bucket name"
}

variable "tags" {
    type = map
    
    description = "Bucket tags"

    default = {}
}