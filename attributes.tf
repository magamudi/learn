provider "aws" {
region = "us-east-1"
access_key = "AKIAVT6KVOXJGZEGRKHH"
secret_key = "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"
}

resource "aws_eip" "lb" {
    vpc = true
    tags = {
     Name = "newbucket"
     Environment = "Test"
   }
}

resource "aws_s3_bucket" "uchebucket" {
  bucket = "mybucket-${random_string.random_suffix.result}"
}

resource "random_string" "random_suffix" {
  length  = 3
  special = false
  upper   = false
}

output "id" {
  description = "Contains the EIP allocation ID"
  value       = aws_eip.lb.id
}