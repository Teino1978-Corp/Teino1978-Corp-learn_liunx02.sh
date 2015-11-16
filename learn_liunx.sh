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
 
# disk usage
df -hl
du -sh ./*

# remove many files
ls | xargs rm -f

# find last 300 minutes and remove
find . -type f -mmin -300 | xargs rm -f

# show log and cut to 1 line
tail -f /opt/logs/ec2-us-sco2-prod-web*/23-20130822 | grep "Aug" | awk -F '\x01' '{print(substr($1,34,155))}'

# show execute time
time ./***.sh

# do not seperate line
echo $(date; cat ***| wc-l)

# run every 5 seconds
while sleep 5; do date; done