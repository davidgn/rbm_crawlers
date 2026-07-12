from html_search_spider import HTMLSearchSpider


class AsaxiyBooksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Asaxiy Books",
            base_url="https://books.asaxiy.uz",
            search_path="?q={query}",
            territory="Uzbekistan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="UZS",
            **kwargs,
        )


if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AsaxiyBooksSpider(limit_pages=1, limit_items=5)
    spider.run()
