import re
from html_search_spider import HTMLSearchSpider

class EthioAdvertEtSpider(HTMLSearchSpider):
    """Spider for Ethio Adverts Ethiopia."""
    def __init__(self, limit_pages: int = 10):
        super().__init__(
            platform_name="EthioAdvert_ET",
            base_url="https://ethioadvert.com",
            search_path="search?keyword={query}&page={page}",
            selectors={'container': '.advert-item', 'title': '.advert-title', 'price': '.advert-price'}, 
            territory="Ethiopia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = EthioAdvertEtSpider(limit_pages=args.limit_pages)
    spider.run()
