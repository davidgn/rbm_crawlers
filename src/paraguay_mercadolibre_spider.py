import re
from html_search_spider import HTMLSearchSpider

class ParaguayMercadolibreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MercadoLibre_PY", base_url="https://listado.mercadolibre.com.py",
            search_path="{search_term}#D[A:{search_term}]",
            selectors={'container': '.ui-search-result__wrapper', 'title': 'h2', 'price': '.andes-money-amount__fraction'},
            territory="Paraguay", limit_pages=limit_pages
        )

if __name__ == "__main__":
    ParaguayMercadolibreSpider(limit_pages=1).run()
