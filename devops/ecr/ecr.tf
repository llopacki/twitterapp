# ECR registry

resource "aws_ecr_repository" "twitterapp" {
  name = "twitterapp"
}

output "RegistryURL" {
  value ="${aws_ecr_repository.twitterapp.repository_url}"
}