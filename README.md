# Terraform AWS EC2 Web Server

Deploy an AWS EC2 web server using Terraform and configure Nginx automatically with a Bash initialization script.

## Project Overview

This project demonstrates Infrastructure as Code (IaC) by provisioning an EC2 instance, configuring network access through a Security Group, and serving a custom web page with Nginx.

## Technologies

- Terraform
- AWS EC2
- AWS VPC and Security Groups
- Amazon Linux 2023
- Nginx
- Terraform AWS, TLS, and Local providers
- Amazon S3 remote state backend

## Project Structure

| File | Purpose |
|---|---|
| `main.tf` | EC2 instance, key pair, Security Group, AMI lookup, and outputs |
| `variables.tf` | Configurable AWS region, instance type, VPC ID, and allowed SSH IP |
| `providers.tf` | AWS provider configuration |
| `versions.tf` | Terraform and provider version requirements |
| `init.sh` | Installs and starts Nginx and creates the web page |
| `backend.tf.example` | Example S3 backend configuration |
| `.terraform.lock.hcl` | Locks provider selections and versions |

## Prerequisites

- Terraform CLI
- AWS CLI configured with appropriate credentials
- An AWS account and an existing VPC
- An S3 bucket configured for Terraform remote state
- Appropriate IAM permissions to manage the required AWS resources

## Configuration

1. Configure AWS credentials using a supported AWS authentication method.
2. Create an S3 bucket for remote state.
3. Configure the backend using your own bucket name.
4. Set `aws_region`, `instance_type`, `vpc_id`, and `my_ip` using Terraform variables.

Do not commit credentials, private keys, Terraform state files, or local variable files.

## Deploy

```bash
terraform init
terraform fmt -check
terraform validate
terraform plan
terraform apply
```

After deployment, Terraform outputs the EC2 public IP and website URL.

## Cleanup

When you no longer need the infrastructure, run:

```bash
terraform destroy
```

Review the plan before confirming. Check separately for any remaining AWS resources or remote state files.

## Learning Objectives

- Provision AWS infrastructure using Terraform
- Manage provider versions and input variables
- Configure Security Group ingress and egress rules
- Generate and manage an SSH key pair
- Bootstrap an EC2 instance using user data
- Store Terraform state remotely in Amazon S3
