provider "aws" {
region = "ap-southeast-1"
}

resource "aws_instance" "one" {
ami = var.instance_ami
instance_type = var.instance_type
count = 1
tags = {
Name = "Dev"
}



variable "instance_ami" {
description = "ami id"
type = string
default = "ami-0516715c2acda76a8"
}

variable "instance_type" {
description = "instance_type"
type = string
defualt = "t2.medium"
}


