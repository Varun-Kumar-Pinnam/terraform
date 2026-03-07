terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"
    }
  }
  backend "s3" {
    bucket         = "aws-remote-state-demo" # Replace with your bucket name
    key            = "locals.tfstate"        # Desired object path within the bucket
    region         = "us-east-1"                        # AWS region of the bucket
    encrypt        = true                               # Encrypt state file at rest
    use_lockfile   = true          # Replace with your DynamoDB table name
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}