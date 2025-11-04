terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "us-east"
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "us-east-1" {
  bucket = "some-random-bucket-name-anubhasingh"
}

resource "aws_s3_bucket" "eu-west-1" {
  bucket   = "some-random-bucket-name-anubhasingh123"
  provider = aws.us-east
}
