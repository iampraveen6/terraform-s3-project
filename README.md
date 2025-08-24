# Terraform S3 Bucket Project

This Terraform project provisions an AWS S3 bucket configured for public access and static website hosting.

## Features

- Creates an S3 bucket with a specified name
- Sets public read access policy on the bucket
- Configures the bucket for static website hosting
- Supports customizable AWS credentials through variables
- Configures public access block settings for the bucket

## Prerequisites

- Terraform 1.0 or higher
- AWS account with appropriate IAM permissions
- AWS access key and secret key

## Usage

1. Clone this repository
2. Update `terraform.tfvars` with your AWS credentials and region

aws_access_key = "YOUR_ACCESS_KEY"
aws_secret_access_key = "YOUR_SECRET_KEY"
aws_region = "YOUR_REGION"
account_id = "YOUR_AWS_ACCOUNT_ID"


3. Initialize Terraform: terraform init

4. Review the execution plan: terraform plan

5. Apply the configuratiom: terraform apply


6. Verify the S3 bucket is created and static website hosting is enabled.

## Cleanup

To avoid charges, destroy the infrastructure when no longer needed: terraform destroy


## Files

- `main.tf` - Main Terraform configuration with AWS provider and resources
- `variables.tf` - Variable definitions for AWS credentials, region, and account ID
- `terraform.tfvars` - Variable values (AWS credentials and region)
- `.gitignore` - Files and folders ignored by Git

## Notes

- Be cautious with public access settings to avoid unintended exposure.
- Customize the bucket name and settings as needed.
- Make sure your AWS credentials have the required permissions to create and manage S3 resources.

## License

This project is licensed under the MIT License.


