terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket  = "group6-microservices-tfstate"  # your S3 bucket
    key     = "envs/prod/terraform.tfstate"
    region  = "ca-central-1"
    encrypt = true
  }
}
