provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  count                  = 1
  ami                    = data.aws_ami.example.id
  instance_type          = "t3.micro"
}

data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "^Centos-7*"
  owners           = ["973714476881"]
}

output "out" {
  value = data.aws_ami.example.id
}
