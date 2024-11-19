# VPC Configuration
vpc-cidr = "172.16.0.0/24"
instance-tenancy = "default"
#vpc-name = "OTMS-VPC-Dev"

# Public Subnet Configuration
public-subnets-cidr = ["172.16.0.0/27","172.16.0.32/27" ]
subnets-azs = ["us-east-1a","us-east-1b"]
pub-sub-name = ["pub-sub-Dev-01","pub-sub-Dev-02"]

# Private Subnet Configuration
private-subnets-cidr = ["172.16.0.64/27","172.16.0.128/26","172.16.0.192/27","172.16.0.224/27" ]
pri-sub-name = ["pri-frontend-sub-Dev","pri-backend-sub-Dev","pri-middleware-sub-Dev","pri-DB-sub-Dev"]

## Public SG
pub-sg-name = "public-sg-Dev"
pub-sg-ports = [0]
cidr_blocks = ["0.0.0.0/0"]
public-sg-protocol = "-1"

## Private SG
pvt-sg-name = "private-sg-Dev"
pvt-sg-ports = [22, 80, 443, 8080]
pvt_cidr_blocks = ["0.0.0.0/0"]

# Other Configuration
nat_name = "OTMS-NAT"
eip-domain = "vpc"
igw_name = "OTMS-IGW"
private-rt-name = "private-rt-Dev"
destination-cidr = "0.0.0.0/0"
public-rt-name = "public-rt-Dev"

# ami-id = "ami-07b36ea9852e986ad"
# instance-type = "t2.medium"
# key-name = "tool-demo"
# bastion-instance-name = "bastion"
# private-instance-name = ["private-instance-01", "private-instance-02"]

# ## Target tg
# target_group_name = "tomcat-tg"
# target_group_port = "8080"
# target_group_protocol = "HTTP"
# health_check_path = "/"
# health_check_protocol = "HTTP"
# health_check_port = "8080"
# health_check_interval = "5"
# health_check_timeout = "2"
# health_check_healthy_threshold = "2"
# health_check_unhealthy_threshold = "2"
# listener_port = "80"
# listener_protocol = "HTTP"


## ALB

alb_name = "OTMS-Dev-alb"
internal = "false"


# ## vpc peering
# peer_vpc_id = "vpc-09a760a9657bbe867"
# peer_owner_id = "945711723952"
# peering_tag = "tomcat_vpc_peering"
# auto_accept = true
# accepter_allow_remote_vpc_dns_resolution = true
# requester_allow_remote_vpc_dns_resolution = true
