variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID for vpc"
}
variable "sg_pvt" {
  type        = string
  description = "private security group"
  default     = "pvt-sg"
}
variable "https_port" {
  type        = string
  description = "TCP port for https"
  default     = "8443"
}
variable "ssh_port" {
  type        = string
  description = "TCP port for ssh"
  default     = "22"
}
variable "rd_database_port" {
  type        = string
  description = "TCP port for Redis database"
  default     = "10000"
}
variable "rd_restAPI_port" {
  type        = string
  description = "TCP port for Redis REST API"
  default     = "9443"
}
variable "rd_crossCluster_port" {
  type        = string
  description = "TCP port for Redis cross-cluster"
  default     = "7000"
}
variable "rd_nodeCommunication_port" {
  type        = string
  description = "TCP port for Redis node-communication"
  default     = "3333"
}
# variable "var.rd_health_monitoring_port" {
#   type        = string
#   description = "TCP port for Redis Performance Analyzer port"
#   default     = "8002"
# }

variable "pvt_sg_tags" {
  default     = {}
  description = "Prvate Security group tags for"
  type        = map(string)
}
variable "cidr" {
  default     = {}
}
