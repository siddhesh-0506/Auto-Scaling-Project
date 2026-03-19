# Auto Scaling Cloud Infrastructure using Terraform

## Overview
Designed and deployed a production-style AWS infrastructure using Terraform with auto scaling and load balancing.

## Architecture
User → Application Load Balancer → Auto Scaling Group → EC2 Instances (Private Subnet)

## Features
- Multi-AZ VPC with public and private subnets  
- Application Load Balancer (ALB)  
- Auto Scaling Group (ASG)  
- Secure EC2 deployment in private subnet  
- Infrastructure as Code using Terraform  

## Tech Stack
AWS, Terraform, Linux

## How to Run
1. Configure AWS credentials  
2. Run:
   terraform init  
   terraform plan  
   terraform apply  

## Outcome
Built a scalable, secure, and highly available cloud infrastructure.
