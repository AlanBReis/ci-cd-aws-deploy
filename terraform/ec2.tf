resource "aws_instance" "tempo-aws" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  key_name = "devops-bootcamp"

  tags = {
    Name = "tempo-aws"
  }
}