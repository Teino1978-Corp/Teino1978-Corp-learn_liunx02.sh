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

time dd bs=1M count=1024 if=/dev/zero of=test.file conv=fdatasync