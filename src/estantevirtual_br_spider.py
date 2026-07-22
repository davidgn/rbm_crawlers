from html_search_spider import HTMLSearchSpider

class EstantevirtualBrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 10, limit_items: int | None = None):
        super().__init__(
            platform_name="Estante Virtual",
            territory="Brazil",
            base_url="https://www.estantevirtual.com.br",
            search_path="busca?q={query}&page={page}",
            selectors={'container': 'div.product-item', 'title': 'h2.product-title', 'price': 'span.price'},
            price_currency="BRL",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    EstantevirtualBrSpider().run()
