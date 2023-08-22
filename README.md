# Terraform Deployment for AWS Elastic Beanstalk Application

This repository contains Terraform scripts to deploy an AWS Elastic Beanstalk application. Elastic Beanstalk makes it easy to deploy, manage, and scale applications in various programming languages.

## Prerequisites

Before you begin, make sure you have the following:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- AWS account credentials properly configured on your machine.
- An existing Elastic Beanstalk application package (source code) that you want to deploy.

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/subhomayb/terraform_beanstalk.git

2. Navigate to the cloned directory:
   
   cd terraform_beanstalk

4. Initialize the Terraform Configuration:
   
   terraform init

6. Review and change the variables.tf with your requirements

7. Deploy Elastic Beanstalk:
   
   terraform apply
