#!/bin/bash
#add fix to exercise3 here
sed -i 's/Hello world/Hello from OpsSchool/g' /var/www/index.html
sed -i '0,/deny from all/s//allow from all/' /etc/apache2/sites-available/default
service apache2 restart
