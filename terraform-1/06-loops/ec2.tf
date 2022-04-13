provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  count         = 2
  ami           = "ami-0e4e4b2f188e91845"
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
