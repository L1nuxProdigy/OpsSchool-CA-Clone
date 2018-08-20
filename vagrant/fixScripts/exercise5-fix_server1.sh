#!/bin/bash
#add fix to exercise5-server1 here
ssh-keygen  -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""
chown vagrant /home/vagrant/.ssh/id_rsa /home/vagrant/.ssh/id_rsa.pub
sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g' /etc/ssh/ssh_config
