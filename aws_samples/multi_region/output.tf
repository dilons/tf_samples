output "dns_name" {
  value = [aws_instance.web.public_dns, aws_instance.web-west-2.public_dns]
}