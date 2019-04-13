# KMS
resource "aws_kms_key" "example" {
  description             = "Example Customer Master Key"
  enable_key_rotation     = true
  is_enabled              = true
  deletion_window_in_days = 7
}

resource "aws_kms_alias" "example" {
  name          = "alias/example"
  target_key_id = "${aws_kms_key.example.key_id}"
}

# ネットワーク
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"

  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "example"
  }
}

resource "aws_subnet" "public_0" {
  vpc_id                  = "${aws_vpc.example.id}"
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_1" {
  vpc_id                  = "${aws_vpc.example.id}"
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "example" {
  vpc_id = "${aws_vpc.example.id}"
}

resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.example.id}"
}

resource "aws_route" "public" {
  route_table_id         = "${aws_route_table.public.id}"
  gateway_id             = "${aws_internet_gateway.example.id}"
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "public_0" {
  subnet_id      = "${aws_subnet.public_0.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "public_1" {
  subnet_id      = "${aws_subnet.public_1.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_subnet" "private_0" {
  vpc_id                  = "${aws_vpc.example.id}"
  cidr_block              = "10.0.64.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = false
}

resource "aws_subnet" "private_1" {
  vpc_id                  = "${aws_vpc.example.id}"
  cidr_block              = "10.0.65.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = false
}

resource "aws_route_table" "private_0" {
  vpc_id = "${aws_vpc.example.id}"
}

resource "aws_route_table" "private_1" {
  vpc_id = "${aws_vpc.example.id}"
}

resource "aws_route_table_association" "private_0" {
  subnet_id      = "${aws_subnet.private_0.id}"
  route_table_id = "${aws_route_table.private_0.id}"
}

resource "aws_route_table_association" "private_1" {
  subnet_id      = "${aws_subnet.private_1.id}"
  route_table_id = "${aws_route_table.private_1.id}"
}

# AWS プロバイダの設定
provider "aws" {
  version = "= 2.0.0"
  region  = "ap-northeast-1"
}
