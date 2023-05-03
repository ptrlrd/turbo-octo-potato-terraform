module "webservers" {
  source = "../modules/web-servers"

  for_each = var.web_server_configuration

  environment = var.environment
  key_pair = each.value.key_pair_name
  private_cidrs =  data.terraform_remote_state.network.outputs.private_subnet_ids
  ports = each.value.ports
  linux_2_ami = each.value.ami
  rocky_linux_ami = each.value.ami #being lazy sorry
  instance_type = each.value.instance_type
}