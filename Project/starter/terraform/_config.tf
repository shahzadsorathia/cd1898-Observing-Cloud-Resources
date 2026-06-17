terraform {
   backend "s3" {
     bucket = "shahzad-udacity-sre-course1-terraform" # Terraform state bucket
     key    = "terraform/terraform.tfstate"
     region = "us-east-1"  # set to the region where the S3 buckets exist
   }
 }

 provider "aws" {
   region = "us-east-1"

   default_tags {
     tags = local.tags
   }
 }
