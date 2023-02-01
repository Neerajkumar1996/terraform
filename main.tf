module "vpc" {
  source     = "./modules/vpc/"
  cidr_block = var.cidr_block
  vpc_tags   = var.vpc_tags
}

module "igw" {
  source   = "./modules/igw/"
  vpc_id   = module.vpc.vpc_id
  igw_tags = var.igw_tags
}

module "public_subnet" {
  source                   = "./modules/public_subnet/"
  public_subnet_cidr_block = var.public_subnet_cidr
  public_subnet_tags       = var.public_subnet_tags
  AZ                       = var.pb_subnet_AZ
  vpc_id                   = module.vpc.vpc_id
  public_routeTable_id     = module.public_rtb.public_routeTable_id
}

module "nat" {
  source           = "./modules/natgw/"
  public_subnet_id = module.public_subnet.public_subnet_id
  NAT_tags         = var.NAT_tags
}

module "public_rtb" {
  source                 = "./modules/pbroutetable"
  vpc_id                 = module.vpc.vpc_id
  igw_id                 = module.igw.igw_id
  public_routeTable_tags = var.public_routeTable_tags
}

module "pvt_subnet1" {
  source                    = "./modules/private_subnet"
  vpc_id                    = module.vpc.vpc_id
  private_subnet_tags       = var.private_subnet1_tags
  private_subnet_cidr_block = var.private_subnet1_cidr
  AZ                        = var.pvt_subnet1_AZ
  private_routeTable_id     = module.pvt_rtb.private_routeTable_id
}

module "pvt_subnet2" {
  source                    = "./modules/private_subnet"
  vpc_id                    = module.vpc.vpc_id
  private_subnet_tags       = var.private_subnet2_tags
  private_subnet_cidr_block = var.private_subnet2_cidr
  AZ                        = var.pvt_subnet2_AZ
  private_routeTable_id     = module.pvt_rtb.private_routeTable_id
}

module "pvt_rtb" {
  source                  = "./modules/pvtroutetable"
  vpc_id                  = module.vpc.vpc_id
  igw_id                  = module.igw.igw_id
  private_routeTable_tags = var.private_routeTable_tags
}

module "pvt_sg" {
  source      = "./modules/pvtsg"
  sg_pvt      = var.sg_pvt
  vpc_id      = module.vpc.vpc_id
  cidr        = var.cidr_block
  pvt_sg_tags = var.pvt_sg_tags
}
module "pb_sg" {
  source     = "./modules/pbsg"
  sg_pb      = var.sg_pb
  vpc_id     = module.vpc.vpc_id
  pb_sg_tags = var.pb_sg_tags
}
module "access_key" {
  source   = "./modules/keypair"
  key_name = var.access_key
  key_path = var.key_path
 }
module "master" {
  source         = "./modules/instance"
  ami            = var.ami
  subnet         = module.public_subnet.public_subnet_id
  security_group = module.pb_sg.public_sg_id
  instance_tags  = var.master_tags
  key_id         =  module.access_key.key
}
module "node1" {
  source         = "./modules/instance"
  ami            = var.ami
  subnet         = module.pvt_subnet1.private_subnet_id
  security_group = module.pvt_sg.private_sg_id
  instance_tags  = var.node1_tags
 key_id         =  module.access_key.key

}
module "node2" {
  source         = "./modules/instance"
  ami            = var.ami
  subnet         = module.pvt_subnet2.private_subnet_id
  security_group = module.pvt_sg.private_sg_id
  instance_tags  = var.node2_tags
 key_id         = module.access_key.key


}
