## About

This repository contains Terraform configurations for provisioning AWS EC2 infrastructure. It automates the creation of VPCs, key pairs, and EC2 instances, making it easier to deploy and manage cloud resources. Sensitive files and local state are excluded from version control to ensure security and best practices.
# Terraform AWS EC2 in Jakarta Region

This Terraform configuration creates a minimal EC2 instance in the AWS Jakarta (ap-southeast-3) region with the following specifications:
- Instance Type: t3.micro (smallest available)
- OS: Amazon Linux 2
- Region: Jakarta (ap-southeast-3)
- Network: New VPC with public subnet
- Security: Basic security group allowing SSH access

## Prerequisites

1. [Terraform](https://www.terraform.io/downloads.html) installed
2. AWS CLI installed and configured with your credentials
3. AWS account with permissions to create resources

## Usage

1. Initialize Terraform:
```bash
terraform init
```

2. Review the planned changes:
```bash
terraform plan
```

3. Apply the configuration:
```bash
terraform apply
```

4. When finished, to delete all resources:
```bash
terraform destroy
```

## Configuration

The following resources will be created:
- VPC
- Internet Gateway
- Subnet
- Route Table
- Security Group
- EC2 Instance (t3.micro)

You can modify the configuration in `variables.tf` if needed.

## Outputs

After successful creation, Terraform will output:
- Public IP address of the EC2 instance

## Connecting to the Instance

To connect to your instance:
```bash
ssh ec2-user@<public-ip>
```

Note: You'll need to create and configure an SSH key pair in AWS before being able to connect.

## Important Note

Remember that running resources in AWS will incur charges. Make sure to run `terraform destroy` when you're done to avoid unnecessary costs.