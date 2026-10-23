# Foundational Terraform: AWS Infrastructure

This project uses Terraform to provision foundational AWS infrastructure in the eu-west-1 region.

## Resources

- AWS provider configuration
- Ubuntu AMI data source
- EC2 instance
- VPC and two subnets
- Internet Gateway
- Route table and subnet associations
- Security groups
- Application Load Balancer

## Project Structure

- providers.tf: Terraform and AWS provider configuration
- data.tf: Ubuntu AMI lookup
- compute.tf: EC2 instance
- vpc.tf: VPC, subnets, Internet Gateway, and route table
- security.tf: Security groups
- alb.tf: Application Load Balancer
- outputs.tf: ALB DNS name output
- .gitignore: Files excluded from Git

## Prerequisites

- Terraform 1.10 or later
- An AWS account
- AWS CLI configured with a profile named terraform-learning

## Usage

Initialize Terraform:

    terraform init

Format the files:

    terraform fmt

Validate the configuration:

    terraform validate

Preview changes:

    terraform plan

Apply changes only when you intend to create or modify AWS resources:

    terraform apply

## Notes

- The ALB currently has no target group or listener configured.
- Review expected AWS costs before applying changes.
- Do not commit Terraform state files or credentials.
- Commit .terraform.lock.hcl to version control.
