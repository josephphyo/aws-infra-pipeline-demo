## VPC Module (build aws vpc with private,public subnet with nat gateway)
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
    Name        = "tf-vpc-demo"
    Environment = "demo"
  }

}