from html_search_spider import HTMLSearchSpider

class OlxBrSpider(HTMLSearchSpider):
    """Broad crawler for OLX Brazil."""
    def __init__(self, limit_pages: int = 10, limit_items: int | None = None):
        super().__init__(
            platform_name="OLX",
            territory="Brazil",
            base_url="https://www.olx.com.br",
            search_path="brasil?q={query}",
            selectors={'container': 'div.sc-1fcmfeb-2', 'title': 'h2', 'price': 'span.m7nrfa-0'},
            price_currency="BRL",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    OlxBrSpider().run()
