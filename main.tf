# Backend
terraform {
  required_version = ">=0.11.1"

  ## No default config, must be specified on CLI.
  backend "atlas" {}
}

# Providers

provider "aws" {
  region = "${var.default_region}"

  assume_role {
    role_arn     = "arn:aws:iam::728517735075:role/dev-admin"
  }

  access_key = "${var.MGMT_TERRAFORM_ACCESS_KEY}"
  secret_key = "${var.MGMT_TERRAFORM_SECRET_KEY}"
}

# Config remote state

data "terraform_remote_state" "config" {
  backend = "atlas"

  config {
    name = "jimco/tech-party"
  }
}
