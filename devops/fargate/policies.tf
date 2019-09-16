## Fargate policies
## policies.tf

data "aws_iam_policy_document" "task_execution_permissions" {
  statement {
    effect = "Allow"

    actions = [
      "kinesis:ListShards",
      "kinesis:ListStreams",
      "kinesis:DescribeStream",
      "kinesis:DescribeStreamSummary",
      "kinesis:PutRecords",
      "kinesis:PutRecord",
      "kinesis:SubscribeToShard",
      "kinesis:GetShardIterator",
      "ecr:GetAuthorizationToken",
      "ecr:BatchCheckLayerAvailability",
      "ecr:GetDownloadUrlForLayer",
      "ecr:BatchGetImage",
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ]

    resources = [
      "*"
    ]
  }
}

# Task logging privileges
data "aws_iam_policy_document" "task_permissions" {
  statement {
    effect = "Allow"

    resources = [
      aws_cloudwatch_log_group.twapp_log_group.arn
    ]

    actions = [
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]
  }
}

data "aws_iam_policy_document" "task_assume" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ecs-tasks.amazonaws.com"]
    }
  }
}


# AutoScale
# ECS auto scale role data
data "aws_iam_policy_document" "ecs_auto_scale_role" {
  version = "2012-10-17"
  statement {
    effect = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["application-autoscaling.amazonaws.com"]
    }
  }
}
