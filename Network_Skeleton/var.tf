variable "aws_region" {
  type        = string
  default     = "us-east-2"
  description = "aws region"
}

######### VPC Variables ############

variable "vpc-cidir-block2" {
  description = "VPC-cidr"
  type        = string
}


variable "vpc_enable_dns_support2" {
  type    = bool
  # default = true
}

variable "vpc_enable_dns_hostnames2" {
  type    = bool
  # default = false
}
########## tenancy  ################

variable "tenancy2" {
  description = "tenancy"
  type        = string
}

########## Tags  ################

variable "vpc_tags2" {
  description = "VPC_tags"
  type        = string
}

########## Public Subnet   ################

variable "public_subnets_cidr2" {
  description = "public subnet cidr block"
  type        = list(string)
}

variable "public_subnets_az2" {
  description = "public subnet availability zones"
  type        = list(string)
}

variable "private_subnets_az2" {
  description = "public subnet availability zones"
  type        = list(string)
}



variable "public_subnets_tags2" {
  description = "public subnet tags"
  type        = list(string)
}

########## Private Subnet   ################

variable "private_subnets_cidr2" {
  description = "public subnet cidr block"
  type        = list(string)
}

# variable "private_subnets_az" {
#   description = "private subnet availability zones"
#   type        = list(string)
# }

variable "private_subnets_tags2" {
  description = "public subnet tags"
  type        = list(string)
}
################# IGW ######################

variable "IGW_tags2" {
  description = "IGW_tags"
  type        = string
}

################# EIP & NAT ################

variable "NAT_tags2" {
  description = "NAT_tags"
  type        = string
}

variable "eip_tags2" {
  description = "eip_tags"
  type        = string
}

###############  Route Tables ###############

variable "public-rt_CIDR2" {
  description = "public-rt_CIDR"
  type        = string
}

variable "public-rt_tags2" {
  description = "public-rt_tags"
  type        = string
}

variable "private-rt_tags2" {
  description = "private-rt_tags"
  type        = string
}

variable "private-rt_CIDR2" {
  description = "private-rt_CIDR"
  type        = string
}

#############  Security Group  ###############

variable "OTMS-public-sg2" {
  description = "OTMS-public-sg"
  type        = string
}

variable "OTMS-public-sg_tags2" {
  description = "OTMS-public-sg"
  type        = string
}

#############  Security Group rules ingress ###############

variable "fronted_ingress_CIDR2" {
  description = "fronted_ingress_CIDR"
  type        = string
}

variable "fronted_ingress_ip-protocol2" {
  description = "fronted_ingress_ip-protocol"
  type        = string
}

#############  Security Group rules egress ###############

variable "fronted_egress_CIDR2" {
  description = "fronted_egress_CIDR"
  type        = string
}

variable "fronted_egress_ip-protocol2" {
  description = "fronted_egress_ip-protocol"
  type        = string
}

############################  ALB #########################

variable "OTMS-alb_name2" {
  description = "OTMS-alb_name"
  type        = string
}

variable "OTMS-alb_type2" {
  description = "OTMS-alb_type"
  type        = string
}

# variable "OTMS-alb_type" {
#     description = "OTMS-alb_type"
#     type = string
# }

variable "OTMS-alb_tags2" {
  description = "OTMS-alb_tags"
  type        = string
}

########################### Route 53 #########################

variable "route53_zone_name2" {
  description = "OTMS-alb_name"
  type        = string
}

########################### Owner tag #########################

variable "owner_tag2" {
  description = "owner_tags"
  type        = string
}

####################### Frontend NACL #########################

variable "frontend_nacl_ingress2" {
  type    = list(object({
    rule_no = number
    protocol = string
    cidr_block = string
    from_port = number
    to_port = number
    action = string
  }))
}

variable "frontend_nacl_egress2" {
  type    = list(object({
    rule_no = number
    protocol = string
    cidr_block = string
    from_port = number
    to_port = number
    action = string
  }))
}

variable "frontend_nacl_tags2" {
  type    = map(string)
  default = {
    Name = "dev-frontend-nacl-01"
    Enviroment = "dev"
    Owner = "Nikhil"
  }
}


############################ Backend NACL ##########################

variable "backend_nacl_ingress2" {
  type    = list(object({
    rule_no = number
    protocol = string
    cidr_block = string
    from_port = number
    to_port = number
    action = string
  }))
}

variable "backend_nacl_egress2" {
  type    = list(object({
    rule_no = number
    protocol = string
    cidr_block = string
    from_port = number
    to_port = number
    action = string
  }))
}

variable "backend_nacl_tags2" {
  type    = map(string)
  default = {
    Name = "dev-backend-nacl-01"
    Enviroment = "dev"
    Owner = "Nikhil"
  }
}


############################## Database NACL ##########################

variable "db_nacl_ingress2" {
  type    = list(object({
    rule_no = number
    protocol = string
    cidr_block = string
    from_port = number
    to_port = number
    action = string
  }))
}

variable "db_nacl_egress2" {
  type    = list(object({
    rule_no = number
    protocol = string
    cidr_block = string
    from_port = number
    to_port = number
    action = string
  }))
}

variable "db_nacl_tags2" {
  type    = map(string)
  default = {
    Name = "dev-db-nacl-01"
    Enviroment = "dev"
    Owner = "Nikhil"
  }
}
