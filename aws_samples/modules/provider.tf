terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

terraform {
  backend "s3" {

    bucket = "dilos-test-tf-bucket"
    key    = "sample-module.tfstate"
    region = "us-east-1"
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
