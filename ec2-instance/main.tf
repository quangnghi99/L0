provider "aws" {
  region = var.AWS_REGION
}

resource "aws_subnet" "vietnam_subnet" {
    cidr_block = "10.0.1.0/24"
    vpc_id = aws_vpc.vietnam_vpc.id
    tags = {
      "Name" = "Main"
    }
}

resource "aws_vpc" "vietnam_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      "Name" = "Vietnam_vpc-test"
    }
}

resource "aws_instance" "nghi-ec2-jenkins" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = aws_key_pair.nghi_key.key_name
    security_groups = ["nghi_sg_using_terraform"]
    tags = {
      "Name" = "nghi_ec2_jen"
    }
}

resource "aws_instance" "nghi-ec2-ansible" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = aws_key_pair.nghi_key.key_name
    security_groups = ["nghi_sg_using_terraform"]
    tags = {
      "Name" = "nghi_ec2_ansible"
    }
}

resource "aws_instance" "nghi-ec2-tomcat" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = aws_key_pair.nghi_key.key_name
    security_groups = ["nghi_sg_using_terraform"]
    tags = {
      "Name" = "nghi_ec2_tomcat"
    }
}

