variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
}

variable "project_name" {
  description = "Project name used to construct resource names"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR range allowed to SSH into the EC2 instance"
  type        = string
}

variable "allowed_http_cidr" {
  description = "CIDR range allowed to access the web application"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "ami_name_filter" {
  description = "AMI name pattern used to select the OS image"
  type        = string
}

variable "ami_owners" {
  description = "Owners filter for the AMI lookup"
  type        = list(string)
}

variable "key_algorithm" {
  description = "Algorithm used to create the SSH key"
  type        = string
}

variable "key_rsa_bits" {
  description = "RSA key size for SSH key generation"
  type        = number
}

variable "http_port" {
  description = "HTTP port for the security group"
  type        = number
}

variable "ssh_port" {
  description = "SSH port for the security group"
  type        = number
}

variable "log_group_retention_days" {
  description = "CloudWatch log retention period in days"
  type        = number
}

variable "status_check_evaluation_periods" {
  description = "Number of evaluation periods for the EC2 status check alarm"
  type        = number
}

variable "cpu_alarm_evaluation_periods" {
  description = "Number of evaluation periods for the high CPU alarm"
  type        = number
}

variable "cpu_alarm_threshold" {
  description = "CPU utilization threshold for the high CPU alarm"
  type        = number
}

variable "alarm_period" {
  description = "Period in seconds for CloudWatch alarm evaluation"
  type        = number
}
 