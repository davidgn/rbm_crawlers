from html_search_spider import HTMLSearchSpider

class KongaNgSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 10, limit_items: int | None = None):
        super().__init__(
            platform_name="Konga",
            territory="Nigeria",
            base_url="https://www.konga.com",
            search_path="search?search={query}&page={page}",
            selectors={'container': 'li.product-list-item', 'title': 'div.name', 'price': 'div.price'},
            price_currency="NGN",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    KongaNgSpider().run()
