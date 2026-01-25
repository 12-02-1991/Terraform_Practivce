resource "aws_instance" "name" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "day-3"
  }

}



/*resource "aws_s3_bucket" "name" {
  bucket = "nareshitveeradevops123"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.name.id

  versioning_configuration {
    status = "Enabled"
  }
}
*/

