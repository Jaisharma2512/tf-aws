

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

resource "aws_s3_bucket_versioning" "vsng" {
  for_each = var.s3_bucket
  bucket = aws_s3_bucket.dabba.id
  versioning_configuration{
    status = var.enable_versioning ? "Enabled" : "Suspended"
  }



}