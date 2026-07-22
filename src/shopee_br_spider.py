from html_search_spider import HTMLSearchSpider

class ShopeeBrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 10, limit_items: int | None = None):
        super().__init__(
            platform_name="Shopee Brazil",
            territory="Brazil",
            base_url="https://shopee.com.br",
            search_path="search?keyword={query}&page={page}",
            selectors={'container': 'div.shopee-search-item-result__item', 'title': 'div.ie3A+n', 'price': 'span.zeicyn'},
            price_currency="BRL",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    ShopeeBrSpider().run()
