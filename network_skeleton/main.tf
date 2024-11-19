module "vpc" {
  source = "./vpc"
  vpc-cidr    = var.vpc-cidr
  instance-tenancy = var.instance-tenancy
  vpc-name = var.vpc-name
}
 module "public-subnets" {
  source = "./public-subnets"
  vpc_id = module.vpc.vpc_id
  public-subnets-cidr = var.public-subnets-cidr
  subnets-azs = var.subnets-azs
  pub-sub-name = var.pub-sub-name
 }

 module "private-subnets" {
  source = "./private-subnets"
  vpc_id = module.vpc.vpc_id
  private-subnets-cidr = var.private-subnets-cidr
  subnets-azs = var.subnets-azs
  pri-sub-name = var.pri-sub-name
 }

 module "eip" {
  source = "./eip"
  eip-domain = var.eip-domain
 }
 module "nat" {
  source = "./nat"
  elastic_ip_id = module.eip.elastic_ip_id
  public_subnet_id = element(module.public-subnets.public_subnet_ids, 0)
  nat_name = var.nat_name
 }
  module "igw" {
  source = "./igw"
  vpc_id = module.vpc.vpc_id
  igw_name = var.igw_name
 }
  module "private-rt" {
  source = "./private-rt"
  vpc_id = module.vpc.vpc_id
  private-rt-name = var.private-rt-name
  destination-cidr = var.destination-cidr
  nat-id = module.nat.nat_gateway_id
  private_subnet_ids = module.private-subnets.private_subnet_ids
  # existing_vpc_cidr_block = var.existing_vpc_cidr_block
 }
 
 module "public-rt" {
  source = "./public-rt"
  vpc_id = module.vpc.vpc_id
  public-rt-name = var.public-rt-name
  destination-cidr = var.destination-cidr
  igw-id = module.igw.internet_gateway_id
  public_subnet_ids = module.public-subnets.public_subnet_ids
  # existing_vpc_cidr_block = var.existing_vpc_cidr_block
  # new_vpc_route_table_id = module.public-subnets.public_subnet_ids
  # new_vpc_cidr_block = var.new_vpc_cidr_block
  # existing_vpc_route_table_id = var.existing_vpc_route_table_id
 }

module "public-sg" {
  source       = "./public-sg"
  vpc_id       = module.vpc.vpc_id
  pub-sg-name  = var.pub-sg-name
  pub-sg-ports = var.pub-sg-ports
  cidr_blocks  = var.cidr_blocks
  public-sg-protocol = var.public-sg-protocol
  #public-sg-protocol = ["tcp"]
}

# module "private-sg" {
#   source           = "./private-sg"
#   vpc_id           = module.vpc.vpc_id
#   pvt-sg-name      = var.pvt-sg-name
#   pvt-sg-ports     = var.pvt-sg-ports
#   pvt_cidr_blocks = var.pvt_cidr_blocks
#   #private-sg-protocol = var.private-sg-protocol
#   private-sg-protocol = ["tcp"]

# }



module "alb" {
source = "./alb"
alb_name = var.alb_name
internal = var.internal
security_groups = module.public-sg.pub_sg_id
subnets = module.public-subnets.public_subnet_ids
# target_group_name = var.target_group_name
# target_group_port = var.target_group_port
# target_group_protocol = var.target_group_protocol
vpc_id = module.vpc.vpc_id
# health_check_path = var.health_check_path
# health_check_protocol = var.health_check_protocol
# health_check_port = var.health_check_port
# health_check_interval = var.health_check_interval
# health_check_timeout = var.health_check_timeout
# health_check_healthy_threshold = var.health_check_healthy_threshold
# health_check_unhealthy_threshold = var.health_check_unhealthy_threshold
# listener_port = var.listener_port
# listener_protocol = var.listener_protocol
}
