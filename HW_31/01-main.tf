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

data "aws_caller_identity" "current" {}