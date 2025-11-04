terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version= "5.37.0"
    }
  }
}

# Managed b our tf 
resource "aws_s3_bucket" "my_bucket" {
  
}

# Not managed by us, just used
data "aws_s3_bucket" "my_bucket" {
  bucket = "not-managed-by-us"
}

variable "bucket_name" {
    type = string
    description = "My variable used to set bucket policy"
    default = "my_default_bucket_name"
  
}

output "bucket_id" {
    value = aws_s3_bucket.my_bucket.id
  
}

locals {
  local_example ="this is a local variable"
}

module "my_module" {
  source = "./module-example"
}