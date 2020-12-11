output "public_cidr" {
  value = module.vpc.private_subnets
  description = "Public Subnets"
}

output "private_cidr" {
  value = module.vpc.public_subnets
  description = "Private Subnets"
}

output "natgateway_public_ip" {
  value = module.vpc.nat_public_ips
  description = "Nat gateway public ip"
}
