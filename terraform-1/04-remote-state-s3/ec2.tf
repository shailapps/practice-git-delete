provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-b58"
    key    = "04-remote-state-s3/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "sample" {
  ami           = "ami-0e4e4b2f188e91845"
  instance_type = "t3.small"
  tags          = {
    Name        = "demo"
  }
}

