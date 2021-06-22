provider "aws" {
  region = "us-east-1"
}

/* CREATE VPC */
resource "aws_vpc" "md_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "md_vpc"
  }
}
