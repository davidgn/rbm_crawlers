from html_search_spider import HTMLSearchSpider

class SophosGtSpider(HTMLSearchSpider):
    """
    Spider for Librería Sophos (Guatemala).
    Uses the ListaLibros platform.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Librería Sophos",
            base_url="https://tienda.sophosenlinea.com",
            search_path="busqueda/listaLibros.php?tipoBus=full&palabrasBusqueda={query}&pagSel={page}",
            selectors={
                'container': '.product-info', 
                'title': '.product-title',
                'link': 'a.productClick',
                'price': '.product-price',
                'author': '.product-authors'
            },
            territory="Guatemala",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = SophosGtSpider(limit_pages=1)
    spider.run()
