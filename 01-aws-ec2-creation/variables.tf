variable "aws_region" {
  description = "The AWS region where resources will be created."
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance."
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance."
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Tag Name for the EC2 instance."
  default     = "Terraform-EC2-Instance"
}