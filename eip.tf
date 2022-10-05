resource "aws_eip" "public_ip_instance" {
    depends_on = [
        module.ec2_public_instance,
        module.vpc
    ]
    instance = module.ec2_public_instance.id
    vpc      = true
    tags = local.common_tags
}