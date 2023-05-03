module "vpc" {
  environment = var.environment
  cidr = var.vpc_cidr
}