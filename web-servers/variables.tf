variable "environment" {
  type = string
  descrption = "lol"  
}

variable "web_server_configuration" {
  type = map(object({
    key_pair_name = string
    ports = list(string)
    ami = string
    instance_type = string
  }))
  description = "EOF this if you wanted to really be fancy"
}