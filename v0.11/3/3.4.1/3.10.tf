resource "aws_instance" "example" {
  ami                    = "ami-0f9ae750e8274075b"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["${aws_security_group.example_ec2.id}"]

  user_data = <<EOF
    #!/bin/bash
    yum install -y httpd
    systemctl start httpd.service
EOF
}

output "example_public_dns" {
  value = "${aws_instance.example.public_dns}"
}
