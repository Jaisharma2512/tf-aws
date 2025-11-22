# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
    source = "../../modules/s3_bucket"
    s3_bucket = var.s3_bucket
}