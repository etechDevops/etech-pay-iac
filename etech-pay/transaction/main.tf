terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

module "server" {
  source        = "git@github.com/etechDevops/etech-base-iac/tree/main/etech-automodules//modules/ref?=vpc"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  num           = var.num
}
