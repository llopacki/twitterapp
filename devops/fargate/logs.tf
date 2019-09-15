# Fargate infrastructure
# logs.tf
# based on https://github.com/bradford-hamilton/terraform-ecs-fargate/


# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "twapp_log_group" {
  name              = "/ecs/twapp-app"
  retention_in_days = 30

  tags = {
    Name = "twapp-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "twapp_log_stream" {
  name           = "twapp-log-stream"
  log_group_name = aws_cloudwatch_log_group.twapp_log_group.name
}