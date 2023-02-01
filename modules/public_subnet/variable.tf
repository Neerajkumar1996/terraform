variable "public_subnet_cidr_block" {
  description = "value of the public subnet cidr"
  type        = string
  default     = "10.0.0.0/24"
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

variable "public_subnet_tags" {
  default     = {}
  type        = map(string)
  description = "tags for subnet"
}

variable "public_routeTable_id" {
  default     = {}
}
