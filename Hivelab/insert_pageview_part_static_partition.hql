FROM pageview_part_stg pvs 
INSERT OVERWRITE TABLE pageview_part PARTITION(dt='20150101', country='us') SELECT viewtime, userid, page_url, referrer_url, friends, properties, ip WHERE pvs.country='us'
INSERT OVERWRITE TABLE pageview_part PARTITION(dt='20150101', country='china') SELECT viewtime, userid, page_url, referrer_url, friends, properties, ip WHERE pvs.country='china'
INSERT OVERWRITE TABLE pageview_part PARTITION(dt='20150101', country='korea') SELECT viewtime, userid, page_url, referrer_url, friends, properties, ip WHERE pvs.country='korea';
