

variable "repository_branch" {
  description = "Repository branch to connect to"
  default     = "main"
}

variable "env" {
  description = "Depolyment environment"
  default     = "dev"
}
variable "project_name" {
  description = "Project name"
  default     = "aws-sagemaker-terraform-cicd"
}
variable "project_id" {
  description = "Project ID"
  default     = "10072022"
}
variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "repository_owner" {
  description = "GitHub repository owner"
  default     = "sravsbeeram"
}

variable "build_repository_name" {
  description = "GitHub repository name"
  default     = "terraform-sagemaker"
}

variable "deploy_repository_name" {
  description = "GitHub repository name"
  default     = "terraform-sagemaker"
}

variable "artifacts_bucket_name" {
  description = "S3 Bucket for storing artifacts"
  default     = "s3bucket-sagemaker-terraform123"
}

variable "github_token" {
  description = "GitHub token"
  default     = "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"
}
