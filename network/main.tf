terraform {
  backend "s3" {
    bucket = "totally-real-bucket"
    key = "network"
    region = "us-west-2"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0."
    }
  }
}