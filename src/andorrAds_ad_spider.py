import re
from html_search_spider import HTMLSearchSpider

class AndorrAdsAdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AndorrAds_AD", base_url="https://andorrads.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Andorra", limit_pages=limit_pages
        )

if __name__ == "__main__":
    AndorrAdsAdSpider(limit_pages=1).run()
