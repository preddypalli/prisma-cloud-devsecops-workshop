provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "3cb33bc8-6123-49e0-8fcc-bf1f743428a7"
    git_commit           = "40058938df571d16ed428c7cb7985dbe878dd790"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-21 19:44:54"
    git_last_modified_by = "preddypalli@gmail.com"
    git_modifiers        = "preddypalli"
    git_org              = "preddypalli"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
