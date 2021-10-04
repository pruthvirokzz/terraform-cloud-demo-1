output "pub_ip" {
  value = aws_instance.My-Var-EC2.*.public_ip
}
output "pub-dns" {
  description = "Public DNS URL of an EC2 Instance"
  value       = aws_instance.My-Var-EC2.*.public_dns
}
