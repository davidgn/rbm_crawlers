import re
from html_search_spider import HTMLSearchSpider

class DeuxiemeMainBeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="2ememain_BE", base_url="https://www.2ememain.be",
            search_path="q/{search_term}",
            selectors={'container': 'article.mp-Listing', 'title': 'h3.mp-Listing-title', 'price': 'p.mp-Listing-price'},
            territory="Belgium", limit_pages=limit_pages
        )

if __name__ == "__main__":
    DeuxiemeMainBeSpider(limit_pages=1).run()
