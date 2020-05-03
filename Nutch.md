# Crawling with Nutch

## Requirement

- Apache Nutch 1.16

- Apache Solr 8.5

## Install

- Copy file đã download dựa theo cấu trúc thư mục.

- Thay đổi Solr URL trong trường `org.apache.nutch.indexwriter.solr.SolrIndexWriter` trong file `${NUTCH_DIR}/conf/index-writers.xml`.

## Crawling

- Thêm trang khởi đầu hoặc sitemap vào file `urls/seed.txt`

- Định nghĩa Regex cho các trang sẽ được crawl (tính cả sitemap nếu có) trong `${NUTCH_DIR}/conf/regex-urlfilter.txt`.

- Định nghĩa các trường sẽ chọn và CSS selector trong file `${NUTCH_DIR}/conf/extractors.xml` dựa vào https://github.com/BayanGroup/nutch-custom-search.

- Bắt đầu quá trình crawl:
  - Nếu URL trong `urls/seed.txt` là sitemap: chạy `${NUTCH_HOME}/bin/crawl -i -sm urls crawl ${repeatTime}`
  - Nếu không, chạy `${NUTCH_HOME}/bin/crawl -i -s urls crawl ${repeatTime}`
