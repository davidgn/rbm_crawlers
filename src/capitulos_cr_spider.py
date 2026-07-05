from html_search_spider import HTMLSearchSpider

class LibreriaCapitulosSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LibreriaCapitulos_CR", base_url="https://libreriacapitulos.com",
            search_path="search?q={search_term}",
            selectors={
                'container': 'li.grid__item',
                'title': 'h3.card__heading',
                'price': '.price-item--regular'
            },
            price_currency="CRC",
            territory="Costa Rica", limit_pages=limit_pages
        )

if __name__ == "__main__":
    import os
    os.environ["RBM_SEARCH_TERM"] = "libro"
    LibreriaCapitulosSpider(limit_pages=1).run()
