/* CREATE VPC IN US-EAST-1 */
resource "aws_vpc" "md_vpc-us-east-1" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.inputvpcname
  }
}

# /* CREATE VPC IN US-WEST-1 (OPTIONAL)*/
# # provider = <PROVIDER NAME>.<ALIAS> #This is a meta-argument from Resource Section
# resource "aws_vpc" "md_vpc-us-west-1" {
#   cidr_block = "10.0.0.0/16"
#   provider   = aws.aws-west-1
#   tags = {
#     Name = var.inputvpcname
#   }
# }

