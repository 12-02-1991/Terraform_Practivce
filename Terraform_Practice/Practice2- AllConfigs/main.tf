resource "aws_instance" "name" {
  ami = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  tags = {
    Name = "MyInstance"
  }
}
resource "aws_instance" "name2" {
  ami = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  tags = {
    Name = "MyInstance-2"
  }
}