terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "actions" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "class31"
    Team = "DevOps"
  }
}

