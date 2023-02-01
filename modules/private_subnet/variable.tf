variable "private_subnet_cidr_block" {
  description = "value of the private subnet cidr"
  type        = string
  default     = "10.0.8.0/21"
}

variable "AZ" {
  description = "value of the subnet AZ"
  type        = string
  default     = "us-east-2a"
}

variable "vpc_id" {
  type = string 
  default = ""
}

variable "private_subnet_tags" {
  default     = {}
  type        = map(string)
  description = "tags for subnet"
}

variable "private_routeTable_id" {
  default     = {}
}
