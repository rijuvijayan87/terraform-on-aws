output "ec2_public_instance_id" {
  value = module.ec2_public_instance.id
}

output "ec2_public_ip" {
  value = module.ec2_public_instance.public_ip
}

output "ec2_private_instance_id" {
  value = module.ec2_private_instance.id
}

output "ec2_private_ip" {
  value = module.ec2_private_instance.public_ip
}