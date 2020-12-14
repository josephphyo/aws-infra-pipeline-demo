terraform {
  backend "s3" {
    bucket = "remote-tf-state-backend"
    key    = "remote-state/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
