variable "s3_bucket" {
    type = map(object({
    bucket = string
    Environment = string
    tags = map(string)
 } ))
}