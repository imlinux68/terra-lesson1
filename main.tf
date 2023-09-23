provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "My_VPC"
  }
}

resource "aws_subnet" "my_vpc_sub1" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    "Name" = "My_vpc_sub1"
  }
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-west-2a"
}