import re
from html_search_spider import HTMLSearchSpider

class Be3lyEgSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Be3ly_EG", base_url="https://be3ly.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.listing-item', 'title': 'h3', 'price': '.price-tag'},
            territory="Egypt", limit_pages=limit_pages
        )

if __name__ == "__main__":
    Be3lyEgSpider(limit_pages=1).run()
