## Phyo Min Htun - phyominhtun1990@gmail.com
## All are testing purpose and using in some events (executing this code and building resources on AWS is your own responsibility)
## References:
## https://registry.terraform.io/modules/terraform-aws-modules/key-pair/aws/latest
## https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip
## https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest
## https://github.com/terraform-aws-modules/terraform-aws-ec2-instance
## https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest

resource "random_pet" "this" {
  length = 2
}

## VPC MODULE (Build aws vpc with private,public subnet with nat gateway)
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.64.0"

  name = var.name
  cidr = var.cidr

  azs             = var.azs
  private_subnets = var.pri_sub
  public_subnets  = var.pub_sub

  enable_nat_gateway     = var.is_enable_natgw
  single_nat_gateway     = var.is_single_natgw
  one_nat_gateway_per_az = var.is_one_natgw_per_az


  tags = {
    Name        = "vpc-demo"
    Environment = "demo"
    Owner       = "managed_by_terraform"
  }
}

## KEY_PAIR MODULE FROM HASHICORP
resource "tls_private_key" "this" {
  algorithm = "RSA"
}

resource "local_file" "private_key" {
  content         = tls_private_key.this.private_key_pem
  filename        = join(".", [random_pet.this.id, "pem"]) ## Generate PEM Key to Local File
  file_permission = "0600"
}

module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name   = random_pet.this.id
  public_key = tls_private_key.this.public_key_openssh
  tags = {
    Name        = "ec2-keypair"
    Environment = "demo"
    Owner       = "managed_by_terraform"
  }
}

## AWS EC2 RESOURCE
resource "aws_instance" "webserver" {
  count                  = length(module.vpc.public_subnets)
  ami                    = data.aws_ami.amazon.id
  instance_type          = var.instance_type
  key_name               = module.key_pair.this_key_pair_key_name
  subnet_id              = module.vpc.public_subnets[count.index]
  vpc_security_group_ids = [module.web_service_sg.this_security_group_id]

  tags = {
    Name        = format("ec2-demon%s", format("%0d", count.index + 1))
    Environment = "demo"
    Owner       = "managed_by_terraform"
  }
}

## AWS EIP RESOURCE
resource "aws_eip" "lb" {
  count    = length(aws_instance.webserver)
  instance = aws_instance.webserver[count.index].id
  vpc      = var.eip_vpc
}

## AWS SG MODULE (HTTP and SSH)
#  custome rule security group allow module
module "web_service_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "web-server-sg"
  description = "Security group for web server with custom ports open within VPC"
  vpc_id      = module.vpc.vpc_id

  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH ports"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "HTTP ports"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
  egress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH ports"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "HTTP ports"
      cidr_blocks = "0.0.0.0/0"
    },
  ]

  tags = {
    Environment = "demo"
    Owner       = "managed_by_terraform"
  }
}
