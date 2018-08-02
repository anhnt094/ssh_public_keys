#!/bin/bash
user="hieuvt12"
pub_key="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAu4+M2BUgGyJrb2kqb/kHOx+fa4Gw9TdKlM4hH+fwg+H2Geui8Y2c9y3zydNrXVE+aVRzeWzcvbyEexuoBfZ375cof/AJkh/96+SkKAv4KWx7RzwMFhkQExuZVOA+248TqM7WDLP3mHf6mR6/940tBCkqVznm05/fXxJPwwWVO2dpIjMhjXWSv+2MfeWggXxCHeKcPGM5uO+LJi+1XjyqE6TSFxaob88hpVbow7RPH3SCjLZy9FgL6Y9tvZVBA8SYsDab3OgK0o84hPDreJPCQXVDbn/NDXSIYR1m15GEddDNFmfPP36A917owvIo74ApXh5gREzXkm3mOoMCEItXHQ== hieuvt12"
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

