resource "aws_instance" "tempo-aws" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  key_name      = "devops-bootcamp"

  vpc_security_group_ids = [aws_security_group.allow_ssh.id]  # Referência ao ID do SG
  user_data = file("script.ssh")

  tags = {
    Name = "tempo-aws"
  }
}
