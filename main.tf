module "ec2-instance" {
    source = "./ec2-instance"
    AWS_REGION = "us-west-2"
    ami_id = "ami-0d439345de8ce99cf"
    instance_type = "t2.micro"
    cidr_blocks = ["0.0.0.0/0"]
}
