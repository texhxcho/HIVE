CREATE TABLE IF NOT EXISTS hivelab.pageview(
  viewTime INT,
  userid BIGINT,
  page_url STRING,
  referrer_url STRING,
  ip STRING COMMENT 'IP Address of the User'
)
COMMENT 'This is the page view table'
STORED AS TEXTFILE;
