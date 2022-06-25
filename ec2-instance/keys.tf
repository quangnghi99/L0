resource "aws_key_pair" "nghi_key" {
    key_name = "nghi_tf_key"
    public_key = file("/home/anhdo/TH_terraform/dev-vpc_test/ssh-keys/anhdo-key.pub")
}