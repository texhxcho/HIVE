CREATE TABLE IF NOT EXISTS hivelab.pageuser_trx(userid BIGINT,
  gender STRING,
  age INT)
COMMENT 'This is the transcational page user table'
CLUSTERED BY (userid) INTO 2 BUCKETS
STORED AS ORC
TBLPROPERTIES("transactional"="true");
