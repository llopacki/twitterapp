# Fargate infrastructure
# outputs.tf
# based on https://github.com/bradford-hamilton/terraform-ecs-fargate/


output "alb_hostname" {
  value = aws_alb.main.dns_name
}