import re
from html_search_spider import HTMLSearchSpider

class ClasificadosEldeberBoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Eldeber_BO", base_url="https://clasificados.eldeber.com.bo",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Bolivia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ClasificadosEldeberBoSpider(limit_pages=1).run()
