# Terraform block
terraform {
  required_version = "~> v0.13.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.0.0"
    }
  }
}

# Provider Block (Default Provider)
provider "aws" {
  region  = aws.region
  profile = "default"
}
