FROM hivelab.pageview_part_stg pvs 
INSERT OVERWRITE TABLE hivelab.pageview_part PARTITION(dt='20150101', country) SELECT viewtime, userid, page_url, referrer_url, friends, properties, ip, country;
