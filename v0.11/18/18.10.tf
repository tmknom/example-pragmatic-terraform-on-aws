resource "aws_s3_bucket" "prevent_destroy_bucket" {
  bucket = "prevent-destroy-pragmatic-terraform-on-aws"

  lifecycle {
    prevent_destroy = true
  }
}
