# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
    backend "s3" {
        bucket  = "cdit-s3-class-lab"
        key     = "./terraform.tfstate"
        region  = "us-east-1"
        encrypt = true
    }
}
