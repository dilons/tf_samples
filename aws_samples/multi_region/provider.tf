terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

# Default Region
provider "aws" {
  region = "us-east-1"
}

# Multi Region
provider "aws" {
  alias  = "west-2"
  region = "us-west-2"
}
