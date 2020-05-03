# bin/nutch inject crawl/crawldb urls
# bin/nutch generate crawl/crawldb crawl/segments
s1=`ls -d crawl/segments/2* | tail -1`
# echo $s1
# bin/nutch fetch $s1
rm -r $s1/crawl_parse
bin/nutch parse $s1
# bin/nutch updatedb crawl/crawldb $s1
# bin/nutch invertlinks crawl/linkdb -dir crawl/segments
bin/nutch index crawl/crawldb/ -linkdb crawl/linkdb/ $s1 -filter -normalize -deleteGone
# bin/nutch dedup crawl/crawldb
# bin/nutch clean crawl/crawldb/

# bin/crawl -i -s urls crawl 1