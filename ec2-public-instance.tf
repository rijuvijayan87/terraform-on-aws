module "ec2_public_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "${var.environment}-ec2-public-bastian"

  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [ module.public_sg.security_group_id ]

  tags = local.common_tags
}