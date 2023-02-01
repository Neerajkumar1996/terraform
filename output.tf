output "vpc_id" {
  value = module.vpc.vpc_id
}
output "igw_id" {
  value = module.igw.igw_id
}
output "public_subnet_id" {
  value = module.public_subnet.public_subnet_id
}
output "nat_id" {
  value = module.nat.nat_id
}
output "private_subnet_id" {
  value = module.pvt_subnet1.private_subnet_id
}
output "private_sg_id" {
  value = module.pvt_sg.private_sg_id
}
output "public_sg_id" {
  value = module.pb_sg.public_sg_id
}
output "master_instance_id" {
  value = module.master.instance_id
}
output "node1_instance_id" {
  value = module.node1.instance_id
}
output "node2_instance_id" {
  value = module.node2.instance_id
}
output "key_id" {
  value = module.access_key.key
}
