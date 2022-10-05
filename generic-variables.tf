variable "aws_region" {
  description = "AWS Region"
  type = string
}

variable "environment" {
  description = "Environment variable used as a prefix"
  type = string
  default = "dev"
}

variable "business_division" {
  description = "Business division in the organisation that this infra is going to be used to for"
  type = string
  default = "ops"
}