terraform {
  # backend "s3" {
  #   bucket = "my-terraform-s3-state3"
  #   key    = "statefolder/terraform.tfstate"
  #   region  = "us-west-2"
  #   use_lockfile   = true
  #   profile = "lexi5"
  # }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.85.0"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
  shared_credentials_files = ["~/.aws/credentials"]
  profile = "lexi5"
  
}


