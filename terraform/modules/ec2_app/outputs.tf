output "application_url" {
  value = "http://${aws_instance.app.public_ip}"
}

output "instance_public_ip" {
  value = aws_instance.app.public_ip
}

output "private_key_file" {
  value = local_sensitive_file.private_key.filename
}

output "ssh_command" {
  value = "ssh -i ${local_sensitive_file.private_key.filename} ec2-user@${aws_instance.app.public_ip}"
}

output "cloudwatch_log_group" {
  value = aws_cloudwatch_log_group.app.name
}
