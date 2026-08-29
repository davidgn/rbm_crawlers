from html_search_spider import HTMLSearchSpider

class StorageBookAndFilmSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Storage Book and Film",
            base_url="https://storagebookandfilm.com",
            search_path="search?q={query}",
            territory="South Korea",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="KRW",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = StorageBookAndFilmSpider(limit_pages=1, limit_items=5)
    spider.run()
