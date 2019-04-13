data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket = "tfstate-pragmatic-terraform-on-aws"
    key    = "network/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
