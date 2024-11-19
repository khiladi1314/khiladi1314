module "vpc" {
  source                      = "git@github.com:MyGurukulam-P8/Infrastructure_as_a_Code.git//Dev_Infrastructure/tf_static/network_skeleton?ref=Dev"
  region                     = "us-east-2"
  vpc-cidir-block             = var.vpc-cidir-block2
  vpc_tags                    = var.vpc_tags2
  tenancy                     = var.tenancy2
  vpc_enable_dns_support      = var.vpc_enable_dns_support2
  vpc_enable_dns_hostnames    = var.vpc_enable_dns_hostnames2
  public_subnets_cidr         = var.public_subnets_cidr2
  public_subnets_az           = var.public_subnets_az2
  private_subnets_az          = var.private_subnets_az2
  public_subnets_tags         = var.public_subnets_tags2
  private_subnets_cidr        = var.private_subnets_cidr2
  private_subnets_tags        = var.private_subnets_tags2
  IGW_tags                    = var.IGW_tags2
  NAT_tags                    = var.NAT_tags2
  eip_tags                    = var.eip_tags2
  public-rt_CIDR              = var.public-rt_CIDR2
  public-rt_tags              = var.public-rt_tags2
  private-rt_tags             = var.private-rt_tags2
  private-rt_CIDR             = var.private-rt_CIDR2
  OTMS-public-sg              = var.OTMS-public-sg2
  OTMS-public-sg_tags         = var.OTMS-public-sg_tags2
  fronted_ingress_CIDR        = var.fronted_ingress_CIDR2
  fronted_ingress_ip-protocol = var.fronted_ingress_ip-protocol2
  fronted_egress_CIDR         = var.fronted_egress_CIDR2
  fronted_egress_ip-protocol  = var.fronted_egress_ip-protocol2
  OTMS-alb_name               = var.OTMS-alb_name2
  OTMS-alb_type               = var.OTMS-alb_type2
  OTMS-alb_tags               = var.OTMS-alb_tags2
  route53_zone_name           = var.route53_zone_name2
  owner_tag                   = var.owner_tag2
  frontend_nacl_ingress       = var.frontend_nacl_ingress2
  frontend_nacl_egress        = var.frontend_nacl_egress2
  frontend_nacl_tags          = var.frontend_nacl_tags2
  backend_nacl_ingress        = var.backend_nacl_ingress2
  backend_nacl_egress         = var.backend_nacl_egress2
  backend_nacl_tags           = var.backend_nacl_tags2
  db_nacl_ingress             = var.db_nacl_ingress2
  db_nacl_egress              = var.db_nacl_egress2
  db_nacl_tags                = var.db_nacl_tags2
















}
