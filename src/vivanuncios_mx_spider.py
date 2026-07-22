import re
from html_search_spider import HTMLSearchSpider

class VivanunciosMxSpider(HTMLSearchSpider):
    """Native spider for Vivanuncios (Mexico)."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Vivanuncios_MX", base_url="https://vivanuncios.com.mx",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Mexico", limit_pages=limit_pages
        )

if __name__ == "__main__":
    VivanunciosMxSpider(limit_pages=1).run()
