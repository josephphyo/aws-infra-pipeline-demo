# AWS INFRA PIPELINE DEMO
---

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> v0.14.0 |
| aws | ~> 3.20.0 |
| local | ~> 2.0.0 |
| random | ~> 3.0.0 |
| tls | ~> 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.20.0 |
| local | ~> 2.0.0 |
| random | ~> 3.0.0 |
| tls | ~> 3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| azs | n/a | `list(string)` | <pre>[<br>  "ap-southeast-1a",<br>  "ap-southeast-1b"<br>]</pre> | no |
| cidr | n/a | `string` | `"192.168.0.0/16"` | no |
| eip\_vpc | n/a | `bool` | `true` | no |
| instance\_type | n/a | `string` | `"t3.micro"` | no |
| is\_enable\_natgw | n/a | `bool` | `true` | no |
| is\_one\_natgw\_per\_az | n/a | `bool` | `false` | no |
| is\_single\_natgw | n/a | `bool` | `true` | no |
| name | n/a | `string` | `"demo_vpc"` | no |
| pri\_sub | n/a | `list(string)` | <pre>[<br>  "192.168.1.0/24",<br>  "192.168.2.0/24"<br>]</pre> | no |
| pub\_sub | n/a | `list(string)` | <pre>[<br>  "192.168.3.0/24",<br>  "192.168.4.0/24",<br>  "192.168.5.0/24"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| eip\_attached\_instance | EIP Attached Instance ID |
| key\_name | Ec2 Pem Key Name |
| natgateway\_public\_ip | Nat gateway public ip |
| private\_cidr | Private Subnets |
| public\_cidr | Public Subnets |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
