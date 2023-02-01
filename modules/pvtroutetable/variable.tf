variable "private_routeTable_tags" {
  type        = map(string)
  description = "tags for pvt_rtTable vpc"
  default = {
    Name    = "private-rtb",
    Owner   = "Neeraj",

  }
}
variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID for vpc"
}
variable "igw_id" {
  default     = ""
  type        = string
}
