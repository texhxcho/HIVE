-- This file is from hive source tree.
CREATE TABLE hivelab.lineitem (L_ORDERKEY      INT,
  L_PARTKEY       INT,
  L_SUPPKEY       INT,
  L_LINENUMBER    INT,
  L_QUANTITY      DOUBLE,
  L_EXTENDEDPRICE DOUBLE,
  L_DISCOUNT      DOUBLE,
  L_TAX           DOUBLE,
  L_RETURNFLAG    STRING,
  L_LINESTATUS    STRING,
  l_shipdate      STRING,
  L_COMMITDATE    STRING,
  L_RECEIPTDATE   STRING,
  L_SHIPINSTRUCT  STRING,
  L_SHIPMODE      STRING,
  L_COMMENT       STRING)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|';
