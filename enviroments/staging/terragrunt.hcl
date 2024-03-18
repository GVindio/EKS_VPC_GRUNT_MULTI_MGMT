terraform {
  source = "git::git@github.com:GVindio/EKS-GRUNT.git//modules"

}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  enviroment = "Staging"
  region_name = "us-east-1"
  public_az = ["us-east-1a", "us-east-1b"]
  private_az = ["us-east-1a", "us-east-1b"]
}
