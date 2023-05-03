environment = "dev"
web_server_configuration = {
  server1 = {
    key_pair_name = "testkp"
    ports = ["22"]
    ami = "custom-ami-string"
    instance_type = "	t4g.nano"
  }
  server2 = {
    key_pair_name = "testkp"
    ports = ["22"]
    ami = "custom-ami-string"
    instance_type = "	t4g.nano"
  }
}