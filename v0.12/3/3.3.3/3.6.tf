resource "aws_instance" "example" {
  ami           = "ami-0f9ae750e8274075b"
  instance_type = "t3.micro"
}

output "example_instance_id" {
  value = aws_instance.example.id
}
