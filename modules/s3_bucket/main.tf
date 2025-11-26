

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
 versioning{
  enabled = var.enable_versioning
 }
}