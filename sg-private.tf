module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.13.1"
  name = "private-bastian-sg"
  description = "Security group for instances in private subnet. HTTP and SSH connection from VPC is open and allows all outbound calls"
  vpc_id = module.vpc.vpc_id

  # Ingress rules and CIDR blocks
  ingress_rules = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

  # Egress rules 
  egress_rules = ["all-all"]
  
  tags = local.common_tags
}