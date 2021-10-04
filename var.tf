#Input Var's:
variable "aws_region" {
  description = "Home region for resource"
  type        = string
  default     = "us-east-1"
}

variable "ec2_instance_type" {
  type    = string
  default = "t2.micro"
}
