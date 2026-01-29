data "aws_subnet" "sub1"{
filter {
  name="tag:Name" 
  values = ["Dev"]
}
}
data "aws_subnet" "sub2"{
filter {
  name="tag:Name" 
  values = ["Test"]
}
}

data "aws_ami" "amzlinux1" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = ["amzn2-ami-hvm-2.0.20250902.3-x86_64-gp2"]
  }
             filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
        filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}
# data "aws_ami" "amzlinux" {
#   most_recent = true
#   owners = [ "self" ]
#   filter {
#     name = "name"
#     values = [ "frontend-ami" ]
#   }

# }

data "aws_ami" "amzlinux2" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = ["amzn2-ami-hvm-2.0.20251014.0-x86_64-gp2"]
  }
             filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
        filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}

resource "aws_instance" "name1" {
    ami=data.aws_ami.amzlinux1.id
    instance_type = "t2.micro"
    subnet_id = data.aws_subnet.sub1.id

}
resource "aws_instance" "name2" {
    ami=data.aws_ami.amzlinux2.id
    instance_type = "t2.micro"
    subnet_id = data.aws_subnet.sub2.id

}