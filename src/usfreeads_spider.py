import re
from html_search_spider import HTMLSearchSpider

class UsFreeAdsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="UsFreeAds", base_url="https://www.usfreeads.com",
            search_path="search.php?q={search_term}",
            selectors={'container': 'tr.ad-row', 'title': 'a.ad-title', 'price': '.price-text'},
            territory="United States", limit_pages=limit_pages
        )

if __name__ == "__main__":
    UsFreeAdsSpider(limit_pages=1).run()
