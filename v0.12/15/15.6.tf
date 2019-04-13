resource "aws_s3_bucket" "operation" {
  bucket = "operation-pragmatic-terraform-on-aws"

  lifecycle_rule {
    enabled = true

    expiration {
      days = "180"
    }
  }
}
