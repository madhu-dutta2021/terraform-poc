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

variable "inputname" {
  type        = string
  description = "Enter the name of the resource"
}
