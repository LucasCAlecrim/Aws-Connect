variable "aws_region" {
  description = "A região da AWS onde a instância será criada"
  default     = "us-east-1"  # Altere conforme necessário
}

variable "key_name" {
  description = "Nome do par de chaves SSH"
}
