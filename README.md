## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> v0.15.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.20.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | ~> 2.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.0.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.20.0 |
| <a name="provider_local"></a> [local](#provider\_local) | ~> 2.0.0 |
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.0.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | ~> 3.0.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_key_pair"></a> [key\_pair](#module\_key\_pair) | terraform-aws-modules/key-pair/aws |  |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | 2.64.0 |
| <a name="module_web_service_sg"></a> [web\_service\_sg](#module\_web\_service\_sg) | terraform-aws-modules/security-group/aws |  |

## Resources

| Name | Type |
|------|------|
| [aws_eip.lb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_instance.webserver](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [local_file.private_key](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [random_pet.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |
| [tls_private_key.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [aws_ami.amazon](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azs"></a> [azs](#input\_azs) | n/a | `list(string)` | <pre>[<br>  "ap-southeast-1a",<br>  "ap-southeast-1b"<br>]</pre> | no |
| <a name="input_cidr"></a> [cidr](#input\_cidr) | n/a | `string` | `"192.168.0.0/16"` | no |
| <a name="input_eip_vpc"></a> [eip\_vpc](#input\_eip\_vpc) | n/a | `bool` | `true` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | n/a | `string` | `"t3.micro"` | no |
| <a name="input_is_enable_natgw"></a> [is\_enable\_natgw](#input\_is\_enable\_natgw) | n/a | `bool` | `true` | no |
| <a name="input_is_one_natgw_per_az"></a> [is\_one\_natgw\_per\_az](#input\_is\_one\_natgw\_per\_az) | n/a | `bool` | `false` | no |
| <a name="input_is_single_natgw"></a> [is\_single\_natgw](#input\_is\_single\_natgw) | n/a | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | `"demo_vpc"` | no |
| <a name="input_pri_sub"></a> [pri\_sub](#input\_pri\_sub) | n/a | `list(string)` | <pre>[<br>  "192.168.1.0/24",<br>  "192.168.2.0/24"<br>]</pre> | no |
| <a name="input_pub_sub"></a> [pub\_sub](#input\_pub\_sub) | n/a | `list(string)` | <pre>[<br>  "192.168.3.0/24",<br>  "192.168.4.0/24",<br>  "192.168.5.0/24"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eip_attached_instance"></a> [eip\_attached\_instance](#output\_eip\_attached\_instance) | EIP Attached Instance ID |
| <a name="output_key_name"></a> [key\_name](#output\_key\_name) | Ec2 Pem Key Name |
| <a name="output_natgateway_public_ip"></a> [natgateway\_public\_ip](#output\_natgateway\_public\_ip) | Nat gateway public ip |
| <a name="output_private_cidr"></a> [private\_cidr](#output\_private\_cidr) | Private Subnets |
| <a name="output_public_cidr"></a> [public\_cidr](#output\_public\_cidr) | Public Subnets |
