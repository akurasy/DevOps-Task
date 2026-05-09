module "ec2_app" {
  source = "./modules/ec2_app"

  aws_region                      = var.aws_region
  project_name                    = var.project_name
  instance_type                   = var.instance_type
  allowed_ssh_cidr                = var.allowed_ssh_cidr
  allowed_http_cidr               = var.allowed_http_cidr
  vpc_cidr_block                  = var.vpc_cidr_block
  public_subnet_cidr              = var.public_subnet_cidr
  ami_name_filter                 = var.ami_name_filter
  ami_owners                      = var.ami_owners
  key_algorithm                   = var.key_algorithm
  key_rsa_bits                    = var.key_rsa_bits
  http_port                       = var.http_port
  ssh_port                        = var.ssh_port
  log_group_retention_days        = var.log_group_retention_days
  status_check_evaluation_periods = var.status_check_evaluation_periods
  cpu_alarm_evaluation_periods    = var.cpu_alarm_evaluation_periods
  cpu_alarm_threshold             = var.cpu_alarm_threshold
  alarm_period                    = var.alarm_period
}
