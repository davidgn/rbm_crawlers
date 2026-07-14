from html_search_spider import HTMLSearchSpider

class AlefredobooksJoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Alefredo Books",
            base_url="https://alefredobooks.com",
            search_path="?s={query}",
            territory="Jordan",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="JOD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AlefredobooksJoSpider(limit_pages=1, limit_items=5)
    spider.run()
