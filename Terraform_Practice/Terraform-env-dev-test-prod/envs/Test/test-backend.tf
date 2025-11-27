
terraform {
  backend "s3" {
    bucket         = "java-aws-engineer-bucket"
    key            = "test/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = true
    
  }
}