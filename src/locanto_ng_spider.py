from html_search_spider import HTMLSearchSpider

class LocantoNgSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 10, limit_items: int | None = None):
        super().__init__(
            platform_name="Locanto Nigeria",
            territory="Nigeria",
            base_url="https://www.locanto.com.ng",
            search_path="search?query={query}&page={page}",
            selectors={'container': 'div.bp_result', 'title': 'h3.text-header', 'price': 'span.price'},
            price_currency="NGN",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    LocantoNgSpider().run()
