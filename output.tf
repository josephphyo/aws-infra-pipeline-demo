output "public_cidr" {
  value = module.vpc.private_subnets
}

output "private_cidr" {
  value = module.vpc.public_subnets
}

output "natgateway_public_ip" {
  value = module.vpc.nat_public_ips
}
