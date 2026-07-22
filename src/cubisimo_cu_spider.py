import re
from html_search_spider import HTMLSearchSpider

class CubisimoCuSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Cubisimo_CU", base_url="https://www.cubisimo.com",
            search_path="anuncios?q={search_term}",
            selectors={'container': 'article.anuncio', 'title': 'h2.anuncio-titulo', 'price': 'span.precio'},
            territory="Cuba", limit_pages=limit_pages
        )

if __name__ == "__main__":
    CubisimoCuSpider(limit_pages=1).run()
