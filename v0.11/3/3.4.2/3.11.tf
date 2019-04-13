variable "env" {}

resource "aws_instance" "example" {
  ami           = "ami-0f9ae750e8274075b"
  instance_type = "${var.env == "prod" ? "m5.large" : "t3.micro"}"
}
