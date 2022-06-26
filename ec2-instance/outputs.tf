output "JenMachine_pub_id" {
    value = aws_instance.nghi-ec2-jenkins.public_ip
}

output "AnsibleMachine_pub_id" {
    value = aws_instance.nghi-ec2-ansible.public_ip
}

output "TomcatMachine_pub_id" {
    value = aws_instance.nghi-ec2-tomcat.public_ip
}

output "TomcatMachine_pri_id" {
    value = aws_instance.nghi-ec2-tomcat.private_ip
}