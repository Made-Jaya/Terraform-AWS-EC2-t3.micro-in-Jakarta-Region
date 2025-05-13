variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-southeast-3"  # Jakarta region
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"  # Smallest available instance type in Jakarta
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-00122f261fc903efc"  # Ubuntu 24.04 EKS AMI in Jakarta
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string
  default     = "ap-southeast-3a"  # Jakarta AZ
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "minimal-ec2"
}