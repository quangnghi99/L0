output "JenMachine_pub_id" {
    value = aws_instance.nghi-ec2-jenkins.public_ip
}

output "ConMachine_pub_id" {
    value = aws_instance.nghi-ec2-ansible.public_ip
}

output "TarMachine_pub_id" {
    value = aws_instance.nghi-ec2-tomcat.public_ip
}

output "TarMachine_pri_id" {
    value = aws_instance.nghi-ec2-tomcat.private_ip
}