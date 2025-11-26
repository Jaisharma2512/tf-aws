

resource "aws_s3_bucket" "dabba"{
 for_each = var.s3_bucket
 bucket = each.value.bucket
 tags  = merge (
    {
     Name = each.key
     Environment = each.value.Environment
    },
   each.value.tags
)
}

resource "aws_s3_bucket_versioning" "v" {
    for_each = var.s3_bucket
    bucket = each.value.dabba.id
    versioning_configuration{
      status= each.value.versioning_configuration.status? Enabled:Disabled
    }
}

  versioning_configuration {
    status = "Enabled"
  }