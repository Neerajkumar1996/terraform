terraform {
  backend "s3" {
    bucket = "terrform"
    key    = "/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}
