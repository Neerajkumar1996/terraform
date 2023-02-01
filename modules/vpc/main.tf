resource "aws_vpc" "my_vpc" {
  cidr_block       = var.cidr_block
  tags             = var.vpc_tags
}
