variable "aws_region" {
  description = "AWS region for the EC2 instance"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "my_ip" {
  description = "YOUR_PUBLIC_IP/32"
  type        = string
  default     = "value"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = "YOUR_VPC_ID"
}