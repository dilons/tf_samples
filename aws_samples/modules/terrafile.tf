module "ec2_servers" {
  source  = "./ec2_servers"
  servers = 2

}
output "ip" {
  value = module.ec2_servers.ip
}
output "dns" {
  value = module.ec2_servers.dns_name
}