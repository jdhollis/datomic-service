provider "aws" {
  version = "~> 2.31"
  region  = var.region
  profile = var.profile
}

data "aws_cloudformation_stack" "datomic_compute" {
  name = "${var.system_name}-compute"
}

data "aws_cloudformation_stack" "datomic_storage" {
  name = var.system_name
}

data "aws_route_table" "datomic" {
  filter {
    name   = "tag:Name"
    values = ["datomic-${var.system_name}"]
  }
}

resource "aws_security_group_rule" "inbound_bastion" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = data.aws_cloudformation_stack.datomic_compute.outputs["BastionSecurityGroup"]
  to_port           = 22
  type              = "ingress"
}

resource "aws_vpc_endpoint_service" "datomic" {
  acceptance_required        = false
  network_load_balancer_arns = [data.aws_cloudformation_stack.datomic_compute.outputs["LoadBalancer"]]
}

resource "aws_vpc_endpoint" "sqs" {
  service_name       = "com.amazonaws.${var.region}.sqs"
  vpc_endpoint_type  = "Interface"
  vpc_id             = data.aws_cloudformation_stack.datomic_storage.outputs["VpcId"]
  security_group_ids = [data.aws_cloudformation_stack.datomic_compute.outputs["NodeSecurityGroup"]]
}
