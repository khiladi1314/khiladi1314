provider "aws" {
 
  region = var.aws_region


}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"  // Specify the desired version constraint
    }
  }
}

