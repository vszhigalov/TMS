provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket = "mytmsbuckets"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}

resource "aws_instance" "ec2_instance" {
  ami                    = "ami-0c5652efc27d66bb3"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  tags = {
    Name = "HW_33"
  }
}