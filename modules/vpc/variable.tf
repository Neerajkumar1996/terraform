variable "cidr_block" {
  description = "value of the vpc cidr"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_tags" {
  default     = {}
  type        = map(string)
  description = "tags for vpc"
}
