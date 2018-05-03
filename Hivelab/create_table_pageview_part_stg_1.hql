CREATE TABLE hivelab.pageview_part_stg(viewTime INT, userid BIGINT,
  page_url STRING, referrer_url STRING,
  friends ARRAY<BIGINT>, properties MAP<STRING, STRING>,
  ip STRING COMMENT 'IP Address of the User',
  country STRING)
COMMENT 'This is the page view table'
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY '\t'
  COLLECTION ITEMS TERMINATED BY ','
  MAP KEYS TERMINATED BY ':'
STORED AS TEXTFILE;
