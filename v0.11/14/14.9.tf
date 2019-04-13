resource "aws_s3_bucket" "artifact" {
  bucket = "artifact-pragmatic-terraform-on-aws"

  lifecycle_rule {
    enabled = true

    expiration {
      days = "180"
    }
  }
}
