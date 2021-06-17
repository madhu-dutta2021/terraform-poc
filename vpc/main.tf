provider "aws" {
  region = "us-east-1"
}

variable "inputvpcname" {
  type        = string
  description = "Enter the name of the VPC"
}

/* CREATE VPC */
resource "aws_vpc" "md_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.inputvpcname
  }
}

output "vpc_id" {
  value = aws_vpc.md_vpc.id
}
