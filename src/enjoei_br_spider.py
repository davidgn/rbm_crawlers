from html_search_spider import HTMLSearchSpider

class EnjoeiBrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 10, limit_items: int | None = None):
        super().__init__(
            platform_name="Enjoei",
            territory="Brazil",
            base_url="https://www.enjoei.com.br",
            search_path="search?term={query}&page={page}",
            selectors={'container': 'div.c-product-card', 'title': 'div.c-product-card__title', 'price': 'span.c-product-card__price'},
            price_currency="BRL",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    EnjoeiBrSpider().run()
