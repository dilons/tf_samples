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
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "dilos-test-tf-bucket"
    key    = "terraform.tfstate"
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
