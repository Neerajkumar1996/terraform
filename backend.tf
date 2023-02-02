terraform {
  backend "s3" {
    bucket = "terraform-redis"
    key    = "redis/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}
