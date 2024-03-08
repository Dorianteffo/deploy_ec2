output "ec2_public_dns" {
  description = "EC2 public dns"
  value       = aws_instance.sde_ec2.public_dns
}


output "private_key" {
  description = "EC2 private key"
  value       = tls_private_key.custom_key.private_key_pem
  sensitive   = true
}
