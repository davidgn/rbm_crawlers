from html_search_spider import HTMLSearchSpider

class MandarakeJapanSpider(HTMLSearchSpider):
    """Spider for Mandarake (Japan)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Mandarake",
            base_url="https://order.mandarake.co.jp",
            search_path="order/listPage/list?keyword={query}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Japan",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = MandarakeJapanSpider()
    spider.run()
