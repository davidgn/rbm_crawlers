from html_search_spider import HTMLSearchSpider

class MercadolivreBrSpider(HTMLSearchSpider):
    """Broad crawler for Mercado Livre Brazil."""
    def __init__(self, limit_pages: int = 10, limit_items: int | None = None):
        super().__init__(
            platform_name="Mercado Livre",
            territory="Brazil",
            base_url="https://lista.mercadolivre.com.br",
            search_path="{query}",
            selectors={'container': 'li.ui-search-layout__item', 'title': 'h2.ui-search-item__title', 'price': 'span.price-tag-fraction'},
            price_currency="BRL",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    MercadolivreBrSpider().run()
