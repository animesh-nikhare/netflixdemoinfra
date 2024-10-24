provider "aws" {
region = "ap-south-2a"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0a74efd95b7028f59"
instance_type = "t2.medium"
key_name = "hyd-key"
vpc_security_group_ids = ["sg-0162a36cb83a1372d"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2"]
}
