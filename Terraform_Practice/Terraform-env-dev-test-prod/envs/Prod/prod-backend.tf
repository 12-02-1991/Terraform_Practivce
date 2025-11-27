
terraform {
  backend "s3" {
    bucket         = "java-aws-engineer-bucket"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = true
    
  }
}