provider "aws" {
  region = "us-east-1"
}

/* CREATE VPC */
resource "aws_vpc" "md_main_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "md_main_vpc"
  }
}
