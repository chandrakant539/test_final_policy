terraform {

  cloud {
    organization = "Test53965"

    workspaces {
      name = "setineltest1"
    }
  }

  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.28.0"
    }
  }

  required_version = ">= 0.14.0"
}
