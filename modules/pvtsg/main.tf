resource "aws_security_group" "private_security_group" {
  name        = var.sg_pvt
  description = "security group"
  vpc_id      = var.vpc_id
  
  dynamic "ingress" {
    for_each = local.inbound_ports
    content {
       from_port        = ingress.value
     to_port          = ingress.value
     protocol         = "tcp"
     cidr_blocks       = var.sg_cidr_block
   }
 }
#   ingress {
#     description = "Traffic from VPC"
#     from_port   = var.https_port
#     to_port     = var.https_port
#     protocol    = "tcp"
#     cidr_blocks = [var.cidr]
#   }
#   ingress {
#     description = "Traffic from VPC"
#     from_port   = var.ssh_port
#     to_port     = var.ssh_port
#     protocol    = "tcp"
#     cidr_blocks = [var.cidr]
#   }
#    ingress {
#     description = "port for rd-database "
#     from_port   = var.rd_database_port
#     to_port     = var.rd_database_port
#     protocol    = "tcp"
#     cidr_blocks = [var.cidr]
#   }
#   ingress {
#     description = "port for rd-rest-api "
#     from_port   = var.rd_restAPI_port
#     to_port     = var.rd_restAPI_port
#     protocol    = "tcp"
#     cidr_blocks = [var.cidr]
#   }
#   ingress {
#     description = "port for rd-crossCluster-search "
#     from_port   = var.rd_crossCluster_port
#     to_port     = var.rd_crossCluster_port
#     protocol    = "tcp"
#     cidr_blocks = [var.cidr]
#   }
#   ingress {
#     description = "port for rd-nodeCommunication "
#     from_port   = var.rd_nodeCommunication_port
#     to_port     = var.rd_nodeCommunication_port
#     protocol    = "tcp"
#     cidr_blocks = [var.cidr]
  }
  # ingress {
  #   description = "port for Performance Analyzer "
  #   from_port   = var.rd_health_monitoring_port
  #   to_port     = var.rd_health_monitoring_port
  #   protocol    = "tcp"
  #   cidr_blocks = [var.cidr]
  # }
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

   tags = var.pvt_sg_tags
 }

locals {
 inbound_ports = [8443, 22, 10000, 9443,7000, 3333 ,8002 ]
}
