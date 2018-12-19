#!/bin/bash
user="anhnt187"
pub_key="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAolBGbHDX/BrH57FuCRgAqC2OzNKXJk2s9erRCMYDtXXKmZzck5x8Q/yv/2n9/Sg9hVF7LFMutVgsQ/HmfQu8XopVjXSbyNRSy3xNaqdXUypAhFZXGPd9EGKaiafM78jjkfjSLNY0p3K6MUGvH7PAHX0Gq/SjEtAdAOtz3CLCuhpLBqWfSw7FwO2dKsQAiEncR1Dc2PdHjxKv83Frof3DugLbhtUtpv4mQEvHlrkU4/TwxgH8H7evPd1+lyiwJ5MTH8z2VsHq1dGlZw6LhTIujhcy9E7tx6ywwRXFkPLmuwNKh/5aMqNQIoKedVJk6MjJjN4yVpzv0lESeJ8CMpZUUw== anhnt187@fpt.com.vn"
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

