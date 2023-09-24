provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    "Name" = "My_VPC"
  }
}

resource "aws_subnet" "my_vpc_sub1" {
  vpc_id = aws_vpc.my_vpc.id
  tags = {
    "Name" = "My_vpc_sub1"
  }
  cidr_block = var.subnet_vpc_cidr
  availability_zone = "us-west-2a"
}

output "my_vpc_out" {
  value = aws_vpc.my_vpc.id
}


output "my_vpc_sub1_out" {
  value = aws_subnet.my_vpc_sub1.id
}


























