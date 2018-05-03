CREATE TABLE hivelab.pageview_part_bucket(viewTime INT, userid BIGINT,
  page_url STRING, referrer_url STRING,
  friends ARRAY<BIGINT>, properties MAP<STRING, STRING>,
  ip STRING COMMENT 'IP Address of the User')
COMMENT 'This is the page view table'
PARTITIONED BY (dt STRING, country STRING)
CLUSTERED BY(userid) SORTED BY(viewTime) INTO 2 BUCKETS
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY '\t'
  COLLECTION ITEMS TERMINATED BY ','
  MAP KEYS TERMINATED BY ':'
STORED AS TEXTFILE;
