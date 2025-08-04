terraform {
  required_version = "~> v0.15.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.76.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.0.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0.0"
    }
  }
}
