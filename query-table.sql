SELECT timestamp, log_group, log_stream, message
FROM my_cloudwatch_logs
WHERE log_group = ‘access_log’
LIMIT 10
