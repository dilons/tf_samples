output "ip" {
  value = "${aws_instance.web[*].public_ip}"
}

output "dns_name" {
  value = "${aws_instance.web[*].public_dns}"
}