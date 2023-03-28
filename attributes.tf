provider "aws" {
region = "us-east-1"
access_key = "AKIAVT6KVOXJGZEGRKHH"
secret_key = "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"
}

resource "aws_eip" "lb" {
    vpc = true
}

resource "aws_s3_bucket" "uchebucket" {
  bucket = "there-is-someone-learning-buckets"
}