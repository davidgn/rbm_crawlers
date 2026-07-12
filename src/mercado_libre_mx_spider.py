from html_search_spider import HTMLSearchSpider

class MercadoLibreMxSpider(HTMLSearchSpider):
    """Spider for Mercado Libre (Mexico)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Mercado Libre",
            base_url="https://listado.mercadolibre.com.mx",
            search_path="{query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Mexico",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = MercadoLibreMxSpider()
    spider.run()
