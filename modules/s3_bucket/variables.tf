variable "s3_bucket" {
    type = map(object({
    bucket = string
    Environment = string
    tags = map(string)
 } ))
}

variable "enable_versioning" {
    type = bool
    description = "enable logging for s3 bucket"
    default = false
}