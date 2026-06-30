import re
from html_search_spider import HTMLSearchSpider

class NicaraguaMercadolibreSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MercadoLibre_NI", base_url="https://listado.mercadolibre.com.ni",
            search_path="{search_term}#D[A:{search_term}]",
            selectors={'container': '.ui-search-result__wrapper', 'title': 'h2', 'price': '.andes-money-amount__fraction'},
            territory="Nicaragua", limit_pages=limit_pages
        )

if __name__ == "__main__":
    NicaraguaMercadolibreSpider(limit_pages=1).run()
