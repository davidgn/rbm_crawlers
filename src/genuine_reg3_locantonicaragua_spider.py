import re
from html_search_spider import HTMLSearchSpider

class LocantoNicaraguaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LocantoNicaragua", base_url="https://www.locanto.com.ni",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Nicaragua", limit_pages=limit_pages
        )

if __name__ == "__main__":
    LocantoNicaraguaSpider(limit_pages=1).run()
