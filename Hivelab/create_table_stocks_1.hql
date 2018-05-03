create table hivelab.stocks (
  date_ string,
  ticker string,
  open double,
  high double,
  low double,
  close double,
  volumn_for_the_day int)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',';

