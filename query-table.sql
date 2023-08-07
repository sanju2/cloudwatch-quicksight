SELECT timestamp, log_group, log_stream, message
FROM my_cloudwatch_logs
WHERE log_group = '/my/log/group'
LIMIT 100;
