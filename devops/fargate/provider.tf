## Fargate provider
## provider.tf
## based on https://github.com/bradford-hamilton/terraform-ecs-fargate/


# Specify the provider and access details
provider "aws" {
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "default"
  region                  = var.aws_region
}