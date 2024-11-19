resource "aws_vpc" "main" {
  cidr_block       = var.vpc-cidr
  instance_tenancy = var.instance-tenancy
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = var.vpc-name
  }
}
