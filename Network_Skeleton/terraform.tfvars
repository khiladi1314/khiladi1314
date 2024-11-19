
aws_region =  "us-east-2"  
vpc-cidir-block2 = "172.16.0.0/25"
vpc_tags2        = "OTMS-Dev-VPC"
tenancy2         = "default"
vpc_enable_dns_support2="true"
vpc_enable_dns_hostnames2="false"

public_subnets_cidr2 = ["172.16.0.0/28", "172.16.0.80/28"]

public_subnets_az2 = ["us-east-2a", "us-east-2b"]

private_subnets_az2 = ["us-east-2a"]

public_subnets_tags2 = ["OTMS-Dev-public-subnet-1", "OTMS-Dev-public-subnet-2"]

private_subnets_cidr2 = ["172.16.0.16/28", "172.16.0.32/28", "172.16.0.48/28", "172.16.0.64/28"]

private_subnets_tags2 = ["OTMS-Dev-private-subnet-1", "OTMS-Dev-private-subnet-2", "OTMS-Dev-private-subnet-3", "OTMS-Dev-private-subnet-4"]

IGW_tags2 = "OTMS-IGW"

NAT_tags2 = "OTMS-NAT"

eip_tags2 = "OTMS-EIP"

public-rt_tags2 = "OTMS-public-rt"

public-rt_CIDR2 = "0.0.0.0/0"

private-rt_tags2 = "OTMS-private-rt"

private-rt_CIDR2 = "0.0.0.0/0"

OTMS-public-sg2 = "OTMS-public-sg"

OTMS-public-sg_tags2 = "OTMS-public-sg"

fronted_ingress_CIDR2 = "0.0.0.0/0"

fronted_ingress_ip-protocol2 = "-1" # semantically equivalent to all ports

fronted_egress_CIDR2 = "0.0.0.0/0"

fronted_egress_ip-protocol2 = "-1" # semantically equivalent to all ports

OTMS-alb_name2 = "otms-alb"

OTMS-alb_type2 = "application"

owner_tag2 = "Nikhil"

OTMS-alb_tags2 = "OTMS-Dev"

route53_zone_name2 = "otms.com"



####################### Frontend NACL #########################

###################### Frontend NACL #######################

frontend_nacl_ingress2 = [{
    rule_no = 100
    protocol = "tcp"
    cidr_block = "192.168.0.0/26"	
    from_port = 22
    to_port = 22
    action = "allow"
    }, {
    rule_no = 110
    protocol = "tcp"
    cidr_block = "172.16.0.0/27"       
    from_port = 3000	
    to_port = 3000
    action = "allow"
    }, {
    rule_no = 120
    protocol = "tcp"
    cidr_block = "172.16.0.0/27"
    from_port = 22	
    to_port = 22
    action = "allow"
    }, {
    rule_no = 130
    protocol = "tcp"
    cidr_block = "172.16.0.32/27"	
    from_port = 3000
    to_port = 3000
    action = "allow"
    }]

frontend_nacl_egress2 = [{
    rule_no = 100
    protocol = "tcp"
    cidr_block = "192.168.0.0/26"	                               
    from_port = 1024                                               
    to_port = 65535
    action = "allow"
    }, {
    rule_no = 110
    protocol = "tcp"
    cidr_block = "172.16.0.0/27"	  
    from_port = 1024
    to_port = 65535
    action = "allow"
    }, {
    rule_no = 120
    protocol = "tcp"
    cidr_block = "172.16.0.32/27"	
    from_port = 1024
    to_port =  65535
    action = "allow"
    }]

frontend_nacl_tags2  = {
    Name = "dev-frontend-nacl-01"
  }


############################# Backend NACL ######################################

# ingress rules

backend_nacl_ingress2 = [{                    
    rule_no = 100 
    protocol = "tcp"
    cidr_block = "192.168.0.0/26"	                      
    from_port = 22                                         
    to_port = 22
    action = "allow"
    }, {
    rule_no = 110
    protocol = "tcp"
    cidr_block = "172.16.0.0/27"	
    from_port = 8080
    to_port = 8080
    action = "allow"
    }, {
    rule_no = 120
    protocol = "tcp"
    cidr_block = "172.16.0.0/27"
    from_port = 1024
    to_port = 65535
    action = "allow"
    }, {
    rule_no = 130
    protocol = "tcp"
    cidr_block = "172.16.0.32/27"
    from_port = 1024
    to_port = 65535
    action = "allow"
    }, {
    rule_no = 140
    protocol = "tcp"
    cidr_block = "172.16.0.0/27"	
    from_port = 22
    to_port = 22
    action = "allow"
    }, {
    rule_no = 150
    protocol = "tcp"
    cidr_block = "172.16.0.0/27"	
    from_port = 1024
    to_port = 65535
    action = "allow"
    }, {
    rule_no = 160
    protocol = "tcp"
    cidr_block = "172.16.0.32/27"	
    from_port = 8080
    to_port = 8080
    action = "allow"
    },{
    rule_no = 170
    protocol = "tcp"
    cidr_block = "172.16.0.224/27"	
    from_port = 1024
    to_port =  65535
    action = "allow"
    },{
    rule_no = 180
    protocol = "tcp"
    cidr_block = "172.16.0.192/27"	
    from_port = 1024
    to_port =  65535
    action = "allow"
    }]

# egress rules

backend_nacl_egress2 = [{
    rule_no = 100
    protocol = "tcp"
    cidr_block = "192.168.0.0/26"	
    from_port = 22
    to_port = 22
    action = "allow"
    }, {
    rule_no = 110
    protocol = "tcp"
    cidr_block = "172.16.0.224/27"	
    from_port = 1024
    to_port = 65535
    action = "allow"
    }, {
    rule_no = 120
    protocol = "tcp"
    cidr_block = "172.16.0.224/27"	
    from_port = 1024
    to_port =  65535
    action = "allow"
    }, {
    rule_no = 130
    protocol = "tcp"
    cidr_block = "172.16.0.32/27"	
    from_port = 1024
    to_port =  65535
    action = "allow"
    }, {
    rule_no = 140
    protocol = "tcp"
    cidr_block = "172.16.0.0/27"	
    from_port = 1024
    to_port =  65535
    action = "allow"
    },{
    rule_no = 150
    protocol = "tcp"
    cidr_block = "172.16.0.192/27"	
    from_port = 1024
    to_port =  65535
    action = "allow"
    }]

backend_nacl_tags2  = {
    Name = "dev-backend-nacl-01"
    Enviroment = "dev"
    Owner = "Nikhil"
  }


###################### Database NACL #######################

# ingress rules ["172.16.0.16/28", "172.16.0.32/28", "172.16.0.48/28", "172.16.0.64/28"]

db_nacl_ingress2 = [{
    rule_no = 100
    protocol = "tcp"
    cidr_block = "192.168.0.0/26"	
    from_port = 22
    to_port = 22
    action = "allow"
    }, {                                                                      
    rule_no = 110                                                            
    protocol = "tcp"
    cidr_block = "172.16.0.0/27"	
    from_port = 22
    to_port = 22
    action = "allow"
    }, {
    rule_no = 120
    protocol = "tcp"
    cidr_block = "172.16.0.224/27"
    from_port = 6379
    to_port = 6379
    action = "allow"
    }, {
    rule_no = 130
    protocol = "tcp"
    cidr_block = "172.16.0.224/27"	
    from_port = 9042
    to_port = 9042
    action = "allow"
    }, {
    rule_no = 140
    protocol = "tcp"
    cidr_block = "172.16.0.224/27"	
    from_port = 5432
    to_port = 5432
    action = "allow"
    }]

# egress rules

db_nacl_egress2 = [{
    rule_no = 100
    protocol = "tcp"
    cidr_block = "192.168.0.0/26"	
    from_port = 1024
    to_port = 65535
    action = "allow"
    }, {
    rule_no = 110
    protocol = "tcp"
    cidr_block = "172.16.0.224/27"	
    from_port = 1024
    to_port = 65535
    action = "allow"
    }, {
    rule_no = 120
    protocol = "tcp"
    cidr_block = "172.16.0.0/27"	
    from_port = 1024
    to_port =  65535
    action = "allow"
    }]

db_nacl_tags2  = {
    Name = "dev-db-nacl-01"
    Enviroment = "dev"
    Owner = "Nikhil"
  }
