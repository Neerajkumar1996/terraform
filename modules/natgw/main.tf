resource "aws_eip" "nat_eip" {
  vpc        = true
}

# NAT
resource "aws_nat_gateway" "NAT_gateway" {
  connectivity_type = "public"
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = var.public_subnet_id
  tags = var.NAT_tags
}
