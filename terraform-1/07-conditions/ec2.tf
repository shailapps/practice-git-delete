provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  count         = 2
  ami           = var.ami == null ? "ami-0e4e4b2f188e91845" : var.ami
  instance_type = "t3.small"
  tags          = {
    Name        = var.names[count.index]
  }
}

output "ip" {
  value = aws_instance.sample.*.public_ip[0]
}

variable "names" {
  default = ["d1", "d2"]
}

variable "ami" {
  default = null
}

#
#resource "aws_instance" "sample1" {
#  count         = var.ami == "ami-0e4e4b2f188e91845" ? 1 : 0
#  ami           = "ami-0e4e4b2f188e91845"
#  instance_type = "t3.small"
#  tags          = {
#    Name        = var.names[count.index]
#  }
#}
#
#resource "aws_instance" "sample" {
#  count         = var.ami != "ami-0e4e4b2f188e91845" ? 1 : 0
#  ami           = var.ami
#  instance_type = "t3.small"
#  tags          = {
#    Name        = var.names[count.index]
#  }
#}