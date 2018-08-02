#!/bin/bash
user="hungpt19"
pub_key="ssh-dss AAAAB3NzaC1kc3MAAACBAMYxX593nqRfbPs16XTU8BLHMpJqn6P45Dp6ddzU0hYuKWdBUCf8UrDQHjy4u4I/KRpstu3mBNVw0es69wmJMbooVwe2TRhUnaWJqnD7TceiSrInQdYZCXugtjw3dfiEGLf1drKQDIwmzWKYaewWu6JzTzo4ssx05tOQb8fIZaj/AAAAFQD9uU9AqXRfqrIGIjI5T/UMYgNouQAAAIAq51pd3vI8I1zLnT7YCKu/ydmpR7INJyX28MEB1ExIl/4f17k7uwJXuwYS1wxizOWIlyIX8WnuvAeCEEWvk5hD63OZ/hslkwPpadebc1li8DIlEIlVNHIyuzpV/Y4k/55D5VJ9UFIo2GWkZu2SmtUPKD+Z8BzI5u1eK6DbVQNBiwAAAIBfn3zqojbrr809B7uJnsWeKkJXB0pxgJKHarGcgruarOHmJwLE/wG6mWl2EGQgsGDi08FF/sBXDm0m/ppr8BxCBNbkFIdU7xQTyZegwa8a9BWDrAONyLoZTmmKVsroWARIaUcskewNhgQBVfLpAeW0titKDKUqy87qCbcja6aq3g== hungpt19"
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

