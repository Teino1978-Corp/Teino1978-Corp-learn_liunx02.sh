# basic command
uname -a
cat /etc/proc/version

# zip / unzip
tar -czvf shared.tar.gz shared
tar -tzvf shared.tar.gz
tar -xzvf shared.tar.gz
gzip 1.js
gzip -d *.gz
gzip -c 1.js > 1.js.gz

# low priority for CPU
nice -19 tar cfz 29-timer.log.tar.gz 29-timer.log

# create local tar ball from remote host folders
$ ssh user@remotehost "cd /var/www/html; tar cvfz - datafolder" > datafolder.tar.gz