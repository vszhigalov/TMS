provider "aws" {
  region = var.region
}

locals {
  ebs_name = "${terraform.workspace}-ebs"
}

resource "aws_ebs_volume" "volume" {
  availability_zone = var.availability_zone
  size              = var.size

  tags = {
  #Name = local.ebs_name
  Name = "${terraform.workspace}-ebs"
  }
}
