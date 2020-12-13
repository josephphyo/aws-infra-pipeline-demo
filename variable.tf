variable "name" {
  type    = string
  default = "demo_vpc"
}

variable "cidr" {
  type    = string
  default = "192.168.0.0/16"
}

variable "azs" {
  type    = list(string)
  default = ["ap-southeast-1a", "ap-southeast-1b"]
}

variable "pri_sub" {
  type    = list(string)
  default = ["192.168.1.0/24", "192.168.2.0/24"]
}

variable "pub_sub" {
  type    = list(string)
  default = ["192.168.3.0/24", "192.168.4.0/24", "192.168.5.0/24"]
}

variable "is_enable_natgw" {
  type    = bool
  default = true

}

variable "is_single_natgw" {
  type    = bool
  default = true
}

variable "is_one_natgw_per_az" {
  type    = bool
  default = false
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "eip_vpc" {
  type    = bool
  default = true
}
