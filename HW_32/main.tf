provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "ec2_instance" {
  ami                    = "ami-0c5652efc27d66bb3"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  subnet_id = aws_subnet.public.id
  tags = {
    Name = "HW_32"
  }
  depends_on = [
      aws_vpc.default
  ]
}

resource "aws_vpc" "default" {
  cidr_block = "10.200.0.0/16"
  tags = {
    Name = "HW_32"
  }
}

resource "aws_subnet" "public" {
  cidr_block              = cidrsubnet(aws_vpc.default.cidr_block, 8, 2)
  availability_zone       = "eu-west-1a"
  vpc_id                  = aws_vpc.default.id
  map_public_ip_on_launch = true

  tags = {
    Name = "HW_32"
  }
  depends_on = [
      aws_vpc.default
  ]
}
