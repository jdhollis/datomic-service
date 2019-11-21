variable "profile" {}
variable "region" {}
variable "system_name" {}

output "apps_security_group_id" {
  value = data.aws_cloudformation_stack.datomic_storage.outputs["AppsSecurityGroup"]
}

output "code_bucket_arn" {
  value = data.aws_cloudformation_stack.datomic_compute.outputs["DatomicCodeBucketArn"]
}

output "code_deploy_application_name" {
  value = data.aws_cloudformation_stack.datomic_compute.outputs["CodeDeployApplicationName"]
}

output "deploy_state_machine_arn" {
  value = data.aws_cloudformation_stack.datomic_compute.outputs["DeployStateMachine"]
}

output "endpoint_service_name" {
  value = aws_vpc_endpoint_service.datomic.service_name
}

output "key_name" {
  value = data.aws_cloudformation_stack.datomic_compute.parameters["KeyName"]
}

output "lambda_security_group_id" {
  value = data.aws_cloudformation_stack.datomic_compute.outputs["LambdaSecurityGroup"]
}

output "load_balancer_arn" {
  value = data.aws_cloudformation_stack.datomic_compute.outputs["LoadBalancer"]
}

output "load_balancer_http_direct_endpoint" {
  value = data.aws_cloudformation_stack.datomic_compute.outputs["LoadBalancerHttpDirectEndpoint"]
}

output "load_balancer_name" {
  value = data.aws_cloudformation_stack.datomic_compute.outputs["LoadBalancerName"]
}

output "node_security_group_id" {
  value = data.aws_cloudformation_stack.datomic_compute.outputs["NodeSecurityGroup"]
}

output "route_table_id" {
  value = data.aws_route_table.datomic.id
}

output "subnet_cidr_blocks" {
  value = [
    data.aws_cloudformation_stack.datomic_storage.outputs["Subnet0CidrBlock"],
    data.aws_cloudformation_stack.datomic_storage.outputs["Subnet1CidrBlock"],
    data.aws_cloudformation_stack.datomic_storage.outputs["Subnet2CidrBlock"],
  ]
}

output "storage_arn" {
  value = data.aws_cloudformation_stack.datomic_storage.outputs["S3DatomicArn"]
}

output "system_name" {
  value = data.aws_cloudformation_stack.datomic_compute.outputs["SystemName"]
}

output "vpc_id" {
  value = data.aws_cloudformation_stack.datomic_storage.outputs["VpcId"]
}
