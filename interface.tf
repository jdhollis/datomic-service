variable "region" {
  default = "us-east-1"
}

variable "system_name" {}

output "apps_security_group_id" {
  value = {
    dev   = module.dev.apps_security_group_id
    stage = module.stage.apps_security_group_id
    prod  = module.prod.apps_security_group_id
  }
}

output "code_bucket_arn" {
  value = {
    dev   = module.dev.code_bucket_arn
    stage = module.stage.code_bucket_arn
    prod  = module.prod.code_bucket_arn
  }
}

output "code_deploy_application_name" {
  value = {
    dev   = module.dev.code_deploy_application_name
    stage = module.stage.code_deploy_application_name
    prod  = module.prod.code_deploy_application_name
  }
}

output "deploy_state_machine_arn" {
  value = {
    dev   = module.dev.deploy_state_machine_arn
    stage = module.stage.deploy_state_machine_arn
    prod  = module.prod.deploy_state_machine_arn
  }
}

output "endpoint_service_name" {
  value = {
    dev   = module.dev.endpoint_service_name
    stage = module.stage.endpoint_service_name
    prod  = module.prod.endpoint_service_name
  }
}

output "key_name" {
  value = {
    dev   = module.dev.key_name
    stage = module.stage.key_name
    prod  = module.prod.key_name
  }
}

output "lambda_security_group_id" {
  value = {
    dev   = module.dev.lambda_security_group_id
    stage = module.stage.lambda_security_group_id
    prod  = module.prod.lambda_security_group_id
  }
}

output "load_balancer_arn" {
  value = {
    dev   = module.dev.load_balancer_arn
    stage = module.stage.load_balancer_arn
    prod  = module.prod.load_balancer_arn
  }
}

output "load_balancer_http_direct_endpoint" {
  value = {
    dev   = module.dev.load_balancer_http_direct_endpoint
    stage = module.stage.load_balancer_http_direct_endpoint
    prod  = module.prod.load_balancer_http_direct_endpoint
  }
}

output "load_balancer_name" {
  value = {
    dev   = module.dev.load_balancer_name
    stage = module.stage.load_balancer_name
    prod  = module.prod.load_balancer_name
  }
}

output "node_security_group_id" {
  value = {
    dev   = module.dev.node_security_group_id
    stage = module.stage.node_security_group_id
    prod  = module.prod.node_security_group_id
  }
}

output "route_table_id" {
  value = {
    dev   = module.dev.route_table_id
    stage = module.stage.route_table_id
    prod  = module.prod.route_table_id
  }
}

output "subnet_cidr_blocks" {
  value = {
    dev   = module.dev.subnet_cidr_blocks
    stage = module.stage.subnet_cidr_blocks
    prod  = module.prod.subnet_cidr_blocks
  }
}

output "storage_arn" {
  value = {
    dev   = module.dev.storage_arn
    stage = module.stage.storage_arn
    prod  = module.prod.storage_arn
  }
}

output "system_name" {
  value = {
    dev   = module.dev.system_name
    stage = module.stage.system_name
    prod  = module.prod.system_name
  }
}

output "vpc_id" {
  value = {
    dev   = module.dev.vpc_id
    stage = module.stage.vpc_id
    prod  = module.prod.vpc_id
  }
}

