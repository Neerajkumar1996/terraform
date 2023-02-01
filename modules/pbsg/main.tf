resource "aws_security_group" "public_security_group" {
  name        = var.sg_pb
  description = "security group"
  vpc_id      = var.vpc_id

  ingress {
   description = "Traffic from VPC"
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Traffic from VPC"
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "port for redis-database"
    from_port   = var.rd_database
    to_port     = var.rd_database
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    description = "port for redis-rest-api"
    from_port   = var.rd_restAPI_port
    to_port     = var.rd_restAPI_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "port for rd-crossCluster-search "
    from_port   = var.rd_crossCluster_port
    to_port     = var.rd_crossCluster_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "port for rd-nodeCommunication "
    from_port   = var.rd_nodeCommunication_port
    to_port     = var.rd_nodeCommunication_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # ingress {
  #   description = "port for Performance Analyzer "
  #   from_port   = var.rd_health_monitoring_port
  #   to_port     =  var.rd_health_monitoring_port
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.pb_sg_tags
}
