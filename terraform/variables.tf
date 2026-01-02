variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

variable "key_name" {
  description = "Existing AWS key pair name to enable SSH access to the instances"
  type        = string
}

variable "public_key_path" {
  description = "Path to the public key file for the AWS key pair"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for Ubuntu 22.04 in the chosen region"
  type        = string
}
