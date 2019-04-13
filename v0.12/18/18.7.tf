resource "aws_security_group" "reference_from_remote_state" {
  name   = "reference-from-remote-state"
  vpc_id = data.terraform_remote_state.network.outputs.example_vpc_id
}
