provider "aws" {
  region = "ap-northeast-1"
}
resource "aws_s3_bucket" "terraform_state" {
  bucket = "forum-terraform"
  versioning {
    enabled = true
  }
  tags = {
    product = "forum"
  }
}

terraform {
  backend "s3" {
    bucket  = "forum-terraform" # 作成したS3バケット
    region  = "ap-northeast-1"
    key     = "terraform.tfstate"
    encrypt = true
  }
}
