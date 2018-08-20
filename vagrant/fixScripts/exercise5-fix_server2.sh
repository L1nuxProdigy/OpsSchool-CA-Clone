#!/bin/bash
#add fix to exercise5-server2 here
apt-get install -y sshpass
ssh-keygen  -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""
chown vagrant /home/vagrant/.ssh/id_rsa /home/vagrant/.ssh/id_rsa.pub
sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g' /etc/ssh/ssh_config
sshpass -p "vagrant" ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub vagrant@192.168.100.10
sshpass -p "vagrant" scp vagrant@192.168.100.10:/home/vagrant/.ssh/id_rsa.pub /home/vagrant/.ssh/server1.pub
cat  /home/vagrant/.ssh/server1.pub >>  /home/vagrant/.ssh/authorized_keys
