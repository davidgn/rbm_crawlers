import re
from html_search_spider import HTMLSearchSpider

class CapeverdeAfribabaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Afribaba_CV", base_url="https://cv.afribaba.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Cape Verde", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CapeverdeAfribabaSpider(limit_pages=1).run()
