import re
from html_search_spider import HTMLSearchSpider

class FourSwappEgSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="FourSwapp_EG", base_url="https://4swapp.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.listing-card', 'title': 'h3', 'price': '.price-label'},
            territory="Egypt", limit_pages=limit_pages
        )

if __name__ == "__main__":
    FourSwappEgSpider(limit_pages=1).run()
