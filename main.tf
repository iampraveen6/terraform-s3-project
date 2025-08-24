terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_access_key
}

resource "aws_s3_bucket" "praveen_public_bucket" {
  bucket = "praveen-public-bucket-12345"
}

resource "random_string" "suffix" {
  length  = 15
  special = false
  upper   = false
  lower   = true
}

resource "aws_s3_bucket_policy" "public_read" {
  bucket = aws_s3_bucket.praveen_public_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = "*"
        Action = "s3:GetObject"
        Resource = "${aws_s3_bucket.praveen_public_bucket.arn}/*"
        Condition = {
          StringEquals = {
            "aws:PrincipalAccount" = var.aws-account-id
          }
        }
      }
    ]
  })
}

resource "aws_s3_bucket_public_access_block" "praveen_public_bucket_block" {
  bucket = aws_s3_bucket.praveen_public_bucket.id

  block_public_acls       = false
  ignore_public_acls      = false
  block_public_policy     = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "praveen_public_bucket_website" {
  bucket = aws_s3_bucket.praveen_public_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}



