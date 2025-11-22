

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

resource "aws_s3_bucket_acl" "buckets_acl" {
    for_each = aws_s3_bucket.dabba
    bucket = each.value.id
    acl = "private"
}