import re
from html_search_spider import HTMLSearchSpider

class TimorlesteLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_TL", base_url="https://timor-leste.locanto.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Timor-Leste", limit_pages=limit_pages
        )

if __name__ == "__main__":
    TimorlesteLocantoSpider(limit_pages=1).run()
