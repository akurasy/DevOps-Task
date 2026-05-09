output "application_url" {
  description = "Application URL"
  value       = module.ec2_app.application_url
}

output "instance_public_ip" {
  description = "EC2 public IP"
  value       = module.ec2_app.instance_public_ip
}

output "private_key_file" {
  description = "Generated private key file path"
  value       = module.ec2_app.private_key_file
}

output "ssh_command" {
  description = "SSH command to connect to EC2"
  value       = module.ec2_app.ssh_command
}

output "cloudwatch_log_group" {
  description = "CloudWatch log group"
  value       = module.ec2_app.cloudwatch_log_group
}
