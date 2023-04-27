variable "enviroment" {
  type = "string"
  description = "type of enviroment used"
}

variable "key_pair" {
  type = "string"
  description = "key pair used for ec2 machines"
}

variable "private_cidrs" {
  type = list(any)
  description = "list of private cidr blocks"
}

variable "ports" {
  type = "string"
  description = "port used for accessing machines"
}

variable "linux_2_ami" {
  type = "string"
  description = "golden ami used for ec2s"
}

variable "rocky_linux_ami" {
  type = "string"
  description = "golden ami used for ec2s"
}

variable "instance_type" {
  type = "string"
  description = "Large ass instance types"
}
