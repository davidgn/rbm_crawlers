import re
from html_search_spider import HTMLSearchSpider

class EnjoeiSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Enjoei", base_url="https://www.enjoei.com.br",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Brazil", limit_pages=limit_pages
        )

if __name__ == "__main__":
    EnjoeiSpider(limit_pages=1).run()
