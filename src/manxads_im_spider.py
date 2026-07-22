import re
from html_search_spider import HTMLSearchSpider

class ManxAdsImSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ManxAds_IM", base_url="https://manxads.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Isle of Man", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ManxAdsImSpider(limit_pages=1).run()
