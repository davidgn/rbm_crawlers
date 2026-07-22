import re
from html_search_spider import HTMLSearchSpider

class ElsalvadorLocantoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Locanto_SV", base_url="https://elsalvador.locanto.com.sv",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="El Salvador", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ElsalvadorLocantoSpider(limit_pages=1).run()
