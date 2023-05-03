terraform {
  backend "s3" {
    bucket = "totally-real-bucket"
    key = "total real key"
    region = "us-west-2"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0."
    }
  }
}

provider "aws" {
  region = "us-west-2" # Change this to your preferred region

  default_tags {
    tags = {
      "managed_by" = "terraform"
      "environment" = local.environment
    }
  }
}
