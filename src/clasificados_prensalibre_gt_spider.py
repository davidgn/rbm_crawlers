import re
from html_search_spider import HTMLSearchSpider

class ClasificadosPrensaLibreGtSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="PrensaLibre_GT", base_url="https://clasificados.prensalibre.com",
            search_path="search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Guatemala", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ClasificadosPrensaLibreGtSpider(limit_pages=1).run()
