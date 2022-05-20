terraform {
  required_version = ">0.14.7"
  backend "s3" {
    bucket = "test-gitworkflow"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }

  required_providers {
    aws = {
      version = ">= 3.66.0"
      source  = "hashicorp/aws"
    }
  }
}