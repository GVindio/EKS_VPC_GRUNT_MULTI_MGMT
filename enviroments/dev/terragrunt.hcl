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
  environment       = "Developement"
  eks_cluster_name  = "Dev-EKS-Demo"
  node_group_name   = "webapp-dev-01"
  node_role_name    = "NodeRole-dev"
  nodegroup_keypair = "webapp-dev-01-key"
  cluster_role      = "AWSEKSClusterRole-dev"
  region_name       = local.region
  vpc_cidr_block    = "10.10.0.0/16"
  public_subnets = ["10.10.0.0/24", "10.10.2.0/24"]
  private_subnets = ["10.10.1.0/24", "10.10.3.0/24"]
  
  }

