variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "AWS Region"
}

variable "aws-account-id" {
  description = "The AWS account ID to deploy resources"
  type        = string
  default     = "Account ID"
}

variable "aws_secret_access_key" {
  description = "The AWS secret access key"
  type        = string
  default     = "your_aws_secret_access_key"
}

variable "aws_access_key" {
  description = "The AWS access key"
  type        = string
  default     = "your_aws_access_key"
}