variable "region" {
  type        = string
  description = "(optional) The AWS Region to be used when deploying region-specific resources (default: us-east-1)"
  default     = "us-east-1"
}

variable "codebuild_project_terraform_plan_name" {
  description = "The projects name."
  type        = string
}
