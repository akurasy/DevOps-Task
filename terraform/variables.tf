variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "eu-west-2"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "devops-ec2-task"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "allowed_ssh_cidr" {
  description = "Your public IP address in CIDR format, for example 197.210.10.20/32"
  type        = string
}

variable "allowed_http_cidr" {
  description = "CIDR allowed to access the web application"
  type        = string
  default     = "0.0.0.0/0"
}

variable "vpc_cidr_block" {
  description = "CIDR range to use for the VPC"
  type        = string
  default     = "10.20.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR range to use for the public subnet"
  type        = string
  default     = "10.20.1.0/24"
}

variable "ami_name_filter" {
  description = "AMI name filter for the EC2 instance"
  type        = string
  default     = "al2023-ami-*-x86_64"
}

variable "ami_owners" {
  description = "AMI owners to filter on"
  type        = list(string)
  default     = ["amazon"]
}

variable "key_algorithm" {
  description = "SSH key algorithm"
  type        = string
  default     = "RSA"
}

variable "key_rsa_bits" {
  description = "SSH key size in bits"
  type        = number
  default     = 4096
}

variable "http_port" {
  description = "HTTP port for the security group"
  type        = number
  default     = 80
}

variable "ssh_port" {
  description = "SSH port for the security group"
  type        = number
  default     = 22
}

variable "log_group_retention_days" {
  description = "CloudWatch log group retention in days"
  type        = number
  default     = 14
}

variable "status_check_evaluation_periods" {
  description = "Number of periods to evaluate the EC2 status check alarm"
  type        = number
  default     = 2
}

variable "cpu_alarm_evaluation_periods" {
  description = "Number of periods to evaluate the CPU alarm"
  type        = number
  default     = 3
}

variable "cpu_alarm_threshold" {
  description = "CPU utilization threshold for the high CPU alarm"
  type        = number
  default     = 80
}

variable "alarm_period" {
  description = "CloudWatch alarm period in seconds"
  type        = number
  default     = 60
}
