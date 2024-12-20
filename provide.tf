terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
  }
}
backend "s3" {
  bucket = "k8-remote-state"
  key = "eksctl"
  region = "us-east-1"
}
}

provider "aws" {
    region = "us-east-1"
}