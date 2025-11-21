variable "ami_id" {
    description = "inserting ami value into main"
    type = string
    default = "ami-0fa3fe0fa7920f68e"
}
variable "instance_type" {
    type = string
    default = "t2.nano"
  
}