terraform {
  source = "git::git@github.com:GVindio/EKS-GRUNT.git//modules"

}



include "remote_state" {
  path = find_in_parent_folders()
}

locals {
  region = "us-east-1"
}

inputs = {
  environment       = "Staging"
  eks_cluster_name  = "Stage-EKS-Demo"
  node_group_name   = "webapp-stage-01"
  node_role_name    = "NodeRole-stage"
  nodegroup_keypair = "webapp-stage-01-key"
  cluster_role      = "AWSEKSClusterRole-stage"
  region_name       = local.region
  vpc_cidr_block    = "10.20.0.0/16"
  public_subnets = ["10.20.0.0/24", "10.20.2.0/24"]
  private_subnets = ["10.20.1.0/24", "10.20.3.0/24"]
}