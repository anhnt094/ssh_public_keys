#!/bin/bash
user="anhnt187"
pub_key="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAkunzhY7MkuC1cw/4LF0ayTZvf4DeWRMi2Cxt8PBlo1s8FycPUIQi33Db4J+/Ur2P9wcQHrKvCX9lZJuQLRmogCqgRXvwkhjDPXUa3kB//+nsK90l4hszJxvwGFBawbSguGu25ob0H7g+McUWljjg/q1VBciLzjoM7rZfDq/B0SQaTrUhLgBiikDCm9NpqLpFs+pbPMbCmy2dsGrKxl4Nbt8g0tZMKpq2z3G22xTiDIq9XE16rcAY5t7l+kbxTwylaQaduST8lZXfKrlvhCxGZ7/tfaFHgec3r12I6v43kXmEwl0W/Z8c1G41cpaPQ05RGGZnkU/IPzjVJZYWWL1f0w== anhnt187"
useradd $user
echo "$user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
mkdir /home/$user/.ssh
chmod 700 /home/$user/.ssh
touch /home/$user/.ssh/authorized_keys
chmod 600 /home/$user/.ssh/authorized_keys
echo $pub_key > /home/$user/.ssh/authorized_keys
chown -R  $user. /home/$user
exit
service sshd reload

