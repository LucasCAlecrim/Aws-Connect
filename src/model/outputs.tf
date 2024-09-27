output "instance_id" {
  description = "O ID da instância EC2"
  value       = aws_instance.my_ec2.id
}

output "public_ip" {
  description = "O IP público da instância EC2"
  value       = aws_instance.my_ec2.public_ip
}
