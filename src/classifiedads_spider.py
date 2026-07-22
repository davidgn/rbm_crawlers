import re
from html_search_spider import HTMLSearchSpider

class ClassifiedAdsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ClassifiedAds", base_url="https://www.classifiedads.com",
            search_path="search.php?q={search_term}",
            selectors={'container': 'div.result-item', 'title': 'a.title', 'price': '.price'},
            territory="United States", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ClassifiedAdsSpider(limit_pages=1).run()
