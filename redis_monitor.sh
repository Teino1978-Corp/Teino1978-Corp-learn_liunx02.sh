$ cat redis_monitor_repeat.sh
while sleep 5; do ./redis_monitor.sh | tr -t '\n' ','; date +"%Y-%m-%d %H:%M:%S"; done

$ cat redis_monitor.sh
date +"%Y-%m-%d %H:%M:%S"
date_start=$(date +%s)
cat redis.cmd | redis-cli
date_end=$(date +%s)
echo $((date_end-date_start))

$ cat redis.cmd
SELECT 1
get REQUEST_COUNT
SLOWLOG LEN