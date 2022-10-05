module "ec2_private_instance" {
  depends_on = [
    module.vpc
  ]
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "${var.environment}-ec2-private-instance"

  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [ module.private_sg.security_group_id ]
  
  subnet_id = module.vpc.private_subnets[0]

  user_data = file("${path.module}/app1-install.sh")
  tags = local.common_tags
}