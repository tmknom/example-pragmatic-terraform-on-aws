resource "aws_s3_bucket" "force_destroy" {
  bucket        = "force-destroy-pragmatic-terraform-on-aws"
  force_destroy = true
}
