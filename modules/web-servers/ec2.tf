
resource "aws_security_group" "example_sg_1" {
  name        = "${var.enviroment}-sg"
  description = "Example security group 1"

  ingress {
    from_port   = var.ports
    to_port     = var.ports
    protocol    = "tcp"
    cidr_blocks = var.private_cidrs
  }
}

resource "aws_security_group" "example_sg_2" {
  name        = "${var.enviroment}-sg-2"
  description = "Example security group 2"

  ingress {
    from_port   = var.ports
    to_port     = var.ports
    protocol    = "tcp"
    cidr_blocks = var.private_cidrs
  }
}

resource "aws_instance" "example_instance_1" {
  ami           = var.linux_2_ami
  instance_type = var.instance_type

  vpc_security_group_ids = [
    aws_security_group.example_sg_1.id,
  ]

  key_name = var.key_pair

}

resource "aws_instance" "example_instance_2" {
  ami           = var.rocky_linux_ami
  instance_type = var.instance_type

  vpc_security_group_ids = [
    aws_security_group.example_sg_2.id,
  ]

  key_name = var.key_pair

}