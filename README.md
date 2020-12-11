## Requirements

The following requirements are needed by this module:

- terraform (~> v0.14.0)

- aws (~> 3.20.0)

## Providers

No provider.

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
  "192.168.4.0/24"
]
```

## Outputs

The following outputs are exported:

### natgateway\_public\_ip

Description: Nat gateway public ip

### private\_cidr

Description: Private Subnets

### public\_cidr

Description: Public Subnets

