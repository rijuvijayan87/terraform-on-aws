variable "instance_type" {
    description = "EC2 instance"
    type = string
    default = "t3.micro"
}

variable "instance_keypair" {
    description = "EC2 instance key pair"
    type = string
    default = "ec2"
}

variable "private_instance_count" {
  description = "EC2 instance expected count"
  type = number
  default = 1
}