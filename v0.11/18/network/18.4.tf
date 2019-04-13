terraform {
  backend "s3" {
    bucket = "tfstate-pragmatic-terraform-on-aws"
    key    = "network/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
