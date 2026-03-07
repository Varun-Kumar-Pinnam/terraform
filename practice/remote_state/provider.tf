terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"
    }
  }
    backend "s3" {
    bucket         = "aws-remote-state-demo"
    key            = "remote_state.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true # Enables S3 native locking
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}