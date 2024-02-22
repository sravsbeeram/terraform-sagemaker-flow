# provider "aws" {
#   region     = "us-west-2"
#   access_key = "AKIAQ3EGQVPJDYB3VP4K"
#   secret_key = "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"
# }
provider "github" {
  token   = var.github_token
  owner   = var.repository_owner
  #version = "~> 4.0.0"
}
# s3 bucket creation
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-sagemaker"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
#aws-sagemaker-notebook-instance
resource "aws_sagemaker_notebook_instance" "ni" {
  name          = "my-notebook-instance"
  role_arn      = "arn:aws:iam::058264169426:role/Sagemaker"
  instance_type = "ml.t2.medium"

  tags = {
    Name = "foo"
  }
}


resource "aws_sagemaker_code_repository" "example" {
  code_repository_name = "terraform-sagemaker"

  git_config {
    repository_url = "https://github.com/sravsbeeram/terraform-sagemaker.git"
  }
}

