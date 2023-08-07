CREATE EXTERNAL TABLE IF NOT EXISTS my_cloudwatch_logs (
  timestamp bigint,
  log_group string,
  log_stream string,
  message string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  'separatorChar' = ',',
  'quoteChar' = '"',
  'escapeChar' = '\\'
)
LOCATION 's3://my-s3-bucket/my-export-folder/';
