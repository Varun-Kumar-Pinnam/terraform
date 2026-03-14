module "vpc" {
source = "../test-terraform-aws-vpc"
project = var.project
environment = var.environment
vpc_cidrs = var.vpc_cidrs
is_peering_required = true

}