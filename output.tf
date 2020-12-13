output "public_cidr" {
  value       = module.vpc.public_subnets
  description = "Public Subnets"
}

output "private_cidr" {
  value       = module.vpc.private_subnets
  description = "Private Subnets"
}

output "natgateway_public_ip" {
  value       = module.vpc.nat_public_ips
  description = "Nat gateway public ip"
}

output "key_name" {
  value       = module.key_pair.this_key_pair_key_name
  description = "Ec2 Pem Key Name"
}

output "eip_attached_instance" {
  value       = aws_eip.lb[*].instance
  description = "EIP Attached Instance ID"
}
