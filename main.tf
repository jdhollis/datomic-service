terraform {
  required_version = "~> 0.12.0"
}

module "dev" {
  source = "./prod"

  profile     = "ops-dev"
  region      = var.region
  system_name = var.system_name
}

module "stage" {
  source = "./prod"

  profile     = "ops-stage"
  region      = var.region
  system_name = var.system_name
}

module "prod" {
  source = "./prod"

  profile     = "ops-prod"
  region      = var.region
  system_name = var.system_name
}
