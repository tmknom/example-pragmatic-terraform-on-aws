resource "aws_vpc" "example_for_remote_state" {
  cidr_block = "10.255.0.0/16"
}

output "example_vpc_id" {
  value = aws_vpc.example_for_remote_state.id
}
