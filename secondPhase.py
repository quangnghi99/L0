from paramiko import SSHClient, AutoAddPolicy
#___ssh to Ansible machine
ssh = SSHClient()
ssh.set_missing_host_key_policy(AutoAddPolicy())
ssh.connect(hostname='3.123.142.96', port=22 ,timeout=3, username='ec2-user', key_filename='/home/ec2-user/L0/nghi_tf_key.pub')

#___copy playbook files from local machine to Ansible machine
localpath = "/home/anhdo/TH_terraform/dev-vpc_test/user_password.xml"
filepath = "/home/ec2-user/user_password.xml"

localpath2 = "/home/anhdo/TH_terraform/dev-vpc_test/my_playbook.yml"
filepath2 = "/home/ec2-user/remote_my_playbook.yml"

#copy file user_password.xml to Ansible machine
ftp_client = ssh.open_sftp()
ftp_client.put(localpath, filepath)

#copy file my_playbook.yml to Ansible machine
ftp_client = ssh.open_sftp()
ftp_client.put(localpath2, filepath2)

ftp_client.close()

#___run the playbook
#ssh.exec_command(comm2)

stdin, stdout, stderr = ssh.exec_command("sudo ansible-playbook /home/ec2-user/remote_my_playbook.yml")
print(stdout.read().decode("ascii"))
print(stderr.read().decode("ascii"))

print("Run play-book successfully")

ssh.close()