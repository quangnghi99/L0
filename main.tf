module "ec2-instance" {
    source = "./ec2-instance"
    AWS_REGION = "us-west-2"
    ami_id = "ami-031ef87edc45fc6db"
    instance_type = "t2.micro"
    cidr_blocks = ["0.0.0.0/0"]
}
