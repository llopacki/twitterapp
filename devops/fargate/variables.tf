## Fargate variables
## variables.tf
## based on https://github.com/bradford-hamilton/terraform-ecs-fargate/

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "eu-west-1"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "myEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default = "myEcsAutoScaleRole"
}

variable "ecs_policy_name" {
  description = "ECS policy name"
  default = "myEcsPolicy"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "712552468879.dkr.ecr.eu-west-1.amazonaws.com/twitterapp"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 8080
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 1
}

variable "autoscale_min" {
  description = "Min size of autoscale"
  default     = 1
}

variable "autoscale_max" {
  description = "Max size of autoscale"
  default     = 2
}


variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}

variable "kinesis_stream" {
  description = "Kinesis stream"
  default = "arn:aws:kinesis:eu-west-1:712552468879:stream/twitterstream2"
}

variable "name_prefix" {
  description = "A name prefix"
  default = "twitterapp"
  type        = string
}