# devops-training-terraform

## Overview
This project deploys a Docker image from [cuongopswat/devops-training](https://hub.docker.com/r/cuongopswat/devops-training) to AWS using Terraform. It sets up the necessary infrastructure, including an ECS cluster, task definitions, services, and a CI/CD pipeline using AWS CodePipeline and CodeBuild. The required ports for PostgreSQL, RabbitMQ, proxy, product, counter, and web services are exposed.

## Prerequisites
- AWS account
- Terraform installed on local machine
- Docker installed (for local testing)
- GitHub repository for your Terraform code

## Setup Instructions

1. **Clone the Repository**
   ```
   git clone https://github.com/redbo1z/devops-training
   cd devops-training-terraform
   ```

2. **Configure AWS Credentials**
   ```
   export AWS_ACCESS_KEY_ID=your-access-key-id
   export AWS_SECRET_ACCESS_KEY=your-secret-access-key
   export AWS_DEFAULT_REGION=your-region
   ```

3. **Modify Variables**
   Update the `variables.tf` file to set any necessary variables, such as the Docker image version or AWS region.

4. **Initialize Terraform**
   ```
   terraform init
   ```

5. **Plan the Deployment**
   ```
   terraform plan
   ```

6. **Apply the Configuration**
   ```
   terraform apply
   ```
   Confirm the action when prompted.

7. **CI/CD Pipeline Setup**
   - The pipeline is created automatically by Terraform using AWS CodePipeline and CodeBuild.
   - On every push to your GitHub repository, CodePipeline will fetch the latest code and trigger CodeBuild to run `terraform init`, `plan`, and `apply` (as defined in `buildspec.yml`).
   - Make sure to update the GitHub repository details and OAuth token in your Terraform configuration.

8. **Access the Services**
   After deployment, you can access the services using the public IP address or DNS name provided in the outputs.

## Ports Exposed
- PostgreSQL: 5432
- RabbitMQ: 5672, 15672
- Proxy: 5000
- Product Service: 5001
- Counter Service: 5002
- Web Service: 8888

## Cleanup
To remove all resources created by this project, run:
```sh
terraform destroy
```
Confirm the action when prompted.

## Notes
- The CI/CD pipeline uses AWS CodePipeline and CodeBuild to automate deployments.
- Update the `buildspec.yml` file if you need to customize the build and deployment steps.
- For security, restrict security group ingress rules as needed and avoid using `AdministratorAccess` in IAM roles.

