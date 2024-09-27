provider "aws" {
  region = "us-east-1"  # Altere para a região desejada
}

resource "aws_key_pair" "my_key" {
  key_name   = "my-key"  # Nome do par de chaves
  public_key = file("~/.ssh/id_rsa.pub")  # Caminho da chave pública
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-12345678"  # ID da imagem AMI (altere conforme necessário)
  instance_type = "t2.micro"

  key_name = aws_key_pair.my_key.key_name  # Nome do par de chaves

  tags = {
    Name = "MyEC2Instance"
  }
}

output "instance_id" {
  value = aws_instance.my_ec2.id
}

output "public_ip" {
  value = aws_instance.my_ec2.public_ip
}
