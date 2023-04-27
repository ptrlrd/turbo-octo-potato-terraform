locals {
  environment = "dev"
  key_pair = "some-string-with-numbers213"
  private_cidrs = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16" ]
  ports = "22"
  linux_2_ami = "ami-0c55b159cbfafe1f0"
  rocky_linux_ami = "ami-0c55b159cbfasafe1f0"
  instance_type = "g5.48xlarge"
}


module "web-servers" {
  source = "../modules/web-servers"
  environment = local.environment
  key_pair = local.key_pair
  private_cidrs = local.private_cidrs
  ports = local.ports
  linux_2_ami = local.linux_2_ami
  rocky_linux_ami = local.rocky_linux_ami
  instance_type = local.instance_type
}