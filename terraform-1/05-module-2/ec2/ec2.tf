resource "aws_instance" "sample" {
  ami           = "ami-0e4e4b2f188e91845"
  instance_type = "t3.small"
  vpc_security_group_ids = [var.sg_id]
  tags          = {
    Name        = "demo"
  }
}

variable "sg_id" {}
