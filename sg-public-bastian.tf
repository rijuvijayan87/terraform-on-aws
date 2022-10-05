module "public_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.13.1"
  name = "public-bastian-sg"
  description = "Security group for instances in public subnet. HTTP,SSH and outbound calls are open"
  vpc_id = module.vpc.vpc_id

  # Ingress rules and CIDR blocks
  ingress_rules = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  # Egress rules 
  egress_rules = ["all-all"]
  
  tags = local.common_tags
}