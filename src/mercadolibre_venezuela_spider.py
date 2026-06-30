import re
from html_search_spider import HTMLSearchSpider

class MercadoLibreVenezuelaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="MercadoLibre Venezuela", base_url="https://listado.mercadolibre.com.ve",
            search_path="{search_term}#D[A:{search_term}]",
            selectors={'container': '.ui-search-result__wrapper', 'title': 'h2', 'price': '.andes-money-amount__fraction'},
            territory="Venezuela", limit_pages=limit_pages
        )
