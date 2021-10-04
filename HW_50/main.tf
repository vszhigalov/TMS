provider "aws" {
  region = var.region
}

locals {
  instance_name = "${terraform.workspace}-instance"
}

resource "aws_instance" "server" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name = local.instance_name
  }
}
