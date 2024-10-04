resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "permitir acesso remoto via ssh"
#   vpc_id      = "vpc-12345678" # Substitua pelo ID do VPC

  # Regras de entrada (Ingress Rules)
  ingress {
    description      = "Allow HTTP traffic"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]  # Permite tráfego HTTP de qualquer lugar
  }

  ingress {
    description      = "Allow SSH traffic"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]  # Permite tráfego SSH de qualquer lugar (não recomendado em produção)
  }

  # Regras de saída (Egress Rules)
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]  # Permite todo o tráfego de saída
  }

  tags = {
    Name = "allow_ssh"
  }
}
