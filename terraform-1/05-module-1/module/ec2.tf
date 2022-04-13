resource "aws_instance" "sample" {
  ami           = "ami-0e4e4b2f188e91845"
  instance_type = "t3.small"
  tags          = {
    Name        = "demo"
  }
}
