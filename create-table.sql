CREATE EXTERNAL TABLE cloudwatch_logs (
    `timestamp` timestamp,
    `message` string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.RegexSerDe'
WITH SERDEPROPERTIES (
    'serialization.format' = '1',
    'input.regex' = '^(\\S+)\\s+(.*)$'
)
LOCATION 's3://s3bucketname/';


