provider "aws" {
  region = "us-east-1"
}

variable "vpcname" {
  type    = string
  default = "md_main_vpc"
}

variable "sshport" {
  type    = number
  default = 22
}

variable "enabled" {
  default = true
}

variable "mylist" {
  type    = list(string)
  default = ["Value1", "Value2"]
}

variable "mymap" {
  type = map
  default = {
    Key1 = "Value1"
    Key2 = "Value2"
  }
}

variable "inputvpcname" {
  type        = string
  description = "Enter the name of the VPC"
}


/* CREATE VPC */
resource "aws_vpc" "md_main_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.inputvpcname
  }
}

output "vpc_id" {
  value = aws_vpc.md_main_vpc.id
}
