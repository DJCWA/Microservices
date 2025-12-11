variable "aws_region" {
  description = "AWS region to deploy to"
  type        = string
  default     = "ca-central-1"
}

variable "project_name" {
  description = "Prefix for all resource names"
  type        = string
  default     = "group6-microservices"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "ecs_desired_count" {
  description = "Desired number of tasks per ECS service"
  type        = number
  default     = 2
}
