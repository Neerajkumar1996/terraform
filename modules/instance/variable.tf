variable "ami" {
  type        = string
  description = "ami id for instances"
  default     = ""
}
variable "instance_tags" {
  type        = map(string)
  description = "tags for master instance"
  default = {
  Name    = "master",
  Owner   = "Neeraj",
  }
}
  

variable "security_group" {
  type        = string
  description = "public sg for instances"
  default     = ""
}
variable "subnet" {
  type        = string
  description = "public subnet for instances"
  default     = ""
}
variable "key_id" {
default = ""
}
