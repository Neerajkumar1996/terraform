variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID for vpc"
}
variable "igw_id" {
    default = ""
}
variable "public_routeTable_tags" {
  type        = map(string)
  description = "tags for vpc"
  default = {}
}
