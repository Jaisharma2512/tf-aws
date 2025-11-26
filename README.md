# Cloud Infrastructure Deployment

## Overview
This repository contains infrastructure-as-code templates for deploying secure, scalable cloud resources using Terraform. It automates provisioning on AWS/GCP, manages configuration, and supports repeatable infrastructure for development, staging, and production environments.

## Prerequisites
- Terraform >= 1.3
- AWS/GCP credentials with required IAM permissions
- Remote state backend (S3/DynamoDB or GCS/Cloud Storage)
- Optional: Pre-installed Docker, Ansible, Kubectl (if applicable)

## Project Structure
```
environments/
  └── dev/
      ├── .terraform/
      ├── .terraform.lock.hcl
      ├── dev.tfvars
      ├── main.tf
      ├── providers.tf
      ├── terraform.tfstate
      ├── terraform.tfstate.backup
      ├── tfplan
      ├── variables.tf

modules/
  └── s3_bucket/
      ├── main.tf
      ├── outputs.tf
      └── variables.tf

README.md

```

## Usage

**1. Clone the repository**
```
git clone https://github.com/jaisharma2512/tf-aws.git
cd tf-aws
```

**2. Initialize Terraform**
```
cd environments/dev
terraform init
```

**3. Review and edit variables**
Create a (environment_name).tfvars file 
Create variables in the file (Example- dev.tfvars).

**4. Plan and apply**
```
terraform plan out=tfplan -var-file="dev.tfvars" # (inplace of dev.tfvars this can also be prod.tfvars , test.tfvars etc..)
terraform apply tfplan
```

## Inputs

| Variable            | Description                        | Type    | Default |
|---------------------|------------------------------------|---------|---------|
| region              | Deployment region                  | string  | us-east-1 |
| enable_versioning   | S3/GCS bucket versioning enabled   | bool    | false   |
| environment         | dev/staging/prod                   | string  | dev     |
| tags                | Mention the tags for the bucket    | string  | dev     |
| ...                 | ...                                | ...     | ...     |

## Outputs

| Output           | Description                  |
|------------------|-----------------------------|
| bucket_id        | Cloud storage bucket name    |
| network_id       | VPC/Network identifier      |
| ...              | ...                         |

## Security & Best Practices

- Store secrets in secure backends or encrypted variables.
- Use remote state with locking to prevent race conditions.
- Tag all resources for tracking and cost analysis.
- Review code with `terraform fmt`, `terraform validate`, and TFLint for compliance.
- Enable logging and monitoring by default for key services.

## Troubleshooting

- Check provider authentication and permissions.
- Use `terraform destroy` for clean teardown.
- Consult official provider docs for resource constraints.

## Contributing

Pull requests and issues are welcome! Please follow linting and documentation standards.

## License

MIT License
