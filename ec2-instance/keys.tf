resource "aws_key_pair" "nghi_key" {
    key_name = "nghi_tf_key"
    public_key = file("/home/ec2-user/L0/nghi_tf_key.pub")
}
