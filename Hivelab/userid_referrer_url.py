import sys
from urlparse import urlparse

for line in sys.stdin:
    line = line.strip()
    (userid, referrer_url) = line.split('\t')
    parsed_uri = urlparse(referrer_url)
    domain = '{uri.netloc}'.format(uri=parsed_uri)
    print '\t'.join([userid, domain])
