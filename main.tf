terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "practice_for_exam"
    workspaces {
      name = "my-app"
    }
  }

}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"

}

locals {
  tags = {
    Name = "example"
  }
}   

# Create a VPC
resource "aws_vpc" "exmasl_vc" {
  cidr_block = "10.0.0.0/16"

}