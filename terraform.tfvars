cidr_block = "10.0.0.0/16"
vpc_tags = {
  Name  = "my-vpc",
  Owner = "Neeraj",
}
public_subnet_cidr = "10.0.0.0/24"
public_subnet_tags = {
  Name  = "pb_subnet",
  Owner = "Neeraj",
}
private_subnet1_cidr = "10.0.48.0/24"
private_subnet1_tags = {
  Name  = "pvt_subnet1",
  Owner = "Neeraj",
}
private_subnet2_cidr = "10.0.128.0/24"
private_subnet2_tags = {
  Name  = "pvt_subnet2",
  Owner = "Neeraj",
}
pvt_sg_tags = {
  Name  = "private-sg"
  Owner = "Neeraj"
}
pb_sg_tags = {
  Name  = "public-sg"
  Owner = "Neeraj"
}
pb_subnet_AZ   = "us-east-1a"
pvt_subnet1_AZ = "us-east-1b"
pvt_subnet2_AZ = "us-east-1c"
ami            = "ami-08c40ec9ead489470"
master_tags = {
  Name  = "master",
  Owner = "Neeraj",
}
node1_tags = {
  Name  = "db_Node1",
  Owner = "Neeraj",
}
node2_tags = {
  Name  = "db_Node2",
  Owner = "Neeraj",
}
access_key = "redis"


