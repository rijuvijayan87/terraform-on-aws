variable "vpc_name" {
  description = "VPC Name"
  type = string
}

variable "vpc_cidr" {
  description = "vpc cidr notation"
  type = string
}

variable "vpc_az" {
  description = "vpc availability zones"
  type = list(string)
  default = ["ap-southeast-2a", "ap-southeast-2b"]
}

variable "vpc_private_subnets" {
  description = "vpc availability zones"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_public_subnets" {
  description = "vpc availability zones"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_database_subnets" {
  description = "vpc availability zones"
  type = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]
}