variable "NAT_tags" {
default = ""
}
variable "public_subnet_id" {
  type        = string
  description = "CIDR block for subnet"
  default     = ""
}
