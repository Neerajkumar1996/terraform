variable "sg_pb" {
  type        = string
  description = "public security group"
  default     = "public-sg"
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
variable "rd_database" {
  type        = string
  description = "port for rd-database"
  default     = "10000"
}

variable "rd_restAPI_port" {
  type        = string
  description = "TCP port for redis REST API"
  default     = "9443"
}
variable "rd_crossCluster_port" {
  type        = string
  description = "TCP port for redis cross-cluster"
  default     = "7000"
}
variable "rd_nodeCommunication_port" {
  type        = string
  description = "TCP port for redis node-communication"
  default     = "3333"
}
# variable "var.rd_health_monitoring_port" {
#   type        = string
#   description = "TCP port for redis Performance Analyzer port"
#   default     = "8002"
# }

variable "pb_sg_tags" {
  default     = {}
  description = "Public Security group tags for"
  type        = map(string)
}
variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID for vpc"
}
