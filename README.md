## Requirements

The following requirements are needed by this module:

- terraform (~> v0.14.0)

- aws (~> 3.20.0)

- tls (~> 3.0.0)

## Providers

The following providers are used by this module:

- aws (~> 3.20.0)

- tls (~> 3.0.0)

## Required Inputs

No required input.

## Optional Inputs

The following input variables are optional (have default values):

### azs

Description: n/a

Type: `list(string)`

Default:

```json
[
  "ap-southeast-1a",
  "ap-southeast-1b"
]
```

### cidr

Description: n/a

Type: `string`

Default: `"192.168.0.0/16"`

### eip\_vpc

Description: n/a

Type: `bool`

Default: `true`

### instance\_type

Description: n/a

Type: `string`

Default: `"t3.micro"`

### is\_enable\_natgw

Description: n/a

Type: `bool`

Default: `true`

### is\_one\_natgw\_per\_az

Description: n/a

Type: `bool`

Default: `false`

### is\_single\_natgw

Description: n/a

Type: `bool`

Default: `true`

### key\_name

Description: n/a

Type: `string`

Default: `"demo-key"`

### name

Description: n/a

Type: `string`

Default: `"demo_vpc"`

### pri\_sub

Description: n/a

Type: `list(string)`

Default:

```json
[
  "192.168.1.0/24",
  "192.168.2.0/24"
]
```

### pub\_sub

Description: n/a

Type: `list(string)`

Default:

```json
[
  "192.168.3.0/24",
  "192.168.4.0/24",
  "192.168.5.0/24"
]
```

## Outputs

The following outputs are exported:

### eip\_attached\_instance

Description: EIP Attached Instance ID

### key\_name

Description: Ec2 Pem Key Name

### natgateway\_public\_ip

Description: Nat gateway public ip

### private\_cidr

Description: Private Subnets

### public\_cidr

Description: Public Subnets

