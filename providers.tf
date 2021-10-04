##Terraform Block
terraform {
  required_version = "~> 1.0.0"

  ##Provider Block
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  #Backend
  backend "s3" {
    bucket = "state-file-backup-2021"
    key    = "workspaces/tf.tfstate"
    region = "us-east-1"

    # For State Locking
    #    dynamodb_table = "terraform-dev-state-table"

  }

}

##Provider Config Block:

#R1
provider "aws" {
  region = "us-east-1"
  #  region = var.aws_region
}


