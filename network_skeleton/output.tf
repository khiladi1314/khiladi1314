output "elastic_ip_id" {
  value = module.eip.elastic_ip_id
}

output "elastic_ip_public-ip" {
  value = module.eip.elastic_ip_public-ip
}

output "internet_gateway_id" {
  value = module.igw.internet_gateway_id
}

output "nat_gateway_id" {
  value = module.nat.nat_gateway_id
}

# output "public_rt_id" {
#    value = module.public-rt.public_rt_id
# }

output "private_subnet_ids" {
   value = module.private-subnets.private_subnet_ids
}

output "private_rt_id" {
   value = module.private-rt.private_rt_id
}

output "public_subnet_ids" {
   value = module.public-subnets.public_subnet_ids
}

output "vpc_id" {
   value = module.vpc.vpc_id
}

output "public_sg_id" {
  value = module.public-sg.pub_sg_id
}

# output "private_sg_id" {
#   value = module.private-sg.pvt_sg_id
# }
