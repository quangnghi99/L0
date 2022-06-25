module "ec2-instance" {
    source = "./ec2-instance"
    AWS_REGION = "eu-central-1"
    ami_id = "ami-019afd3459f39e677"
    instance_type = "t2.micro"
    cidr_blocks = ["0.0.0.0/0"]
}
