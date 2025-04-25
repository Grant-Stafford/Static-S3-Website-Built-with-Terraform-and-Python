# Bucket = my-static-s3-website-us-east-1a-id001
# pre-signed url = 
# s3 location of objects to host = https://staging.dvck9gvogtecv.amplifyapp.com/

####### 
# AWS Provider
####### 

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}