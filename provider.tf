terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.64.0"
    }
  }

  backend "s3" {
    bucket = "timing-project-remote-state"
    key    = "vpc"
    region = "ap-south-1"
    dynamodb_table = "timing-project-lock"
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}