terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"  # Replace with your desired region
  access_key = "AKIARAD3UQJCNRGSVZDX" #replace
  secret_key = "+FxsbGXv10j3xeTNReawRfUChJDxm9KkYzNtjRqa" #replace
}
