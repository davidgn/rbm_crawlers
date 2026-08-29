from html_search_spider import HTMLSearchSpider

class JosephBethSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Joseph Beth",
            base_url="https://www.josephbeth.com",
            search_path="search?q={query}",
            territory="USA",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = JosephBethSpider(limit_pages=1, limit_items=5)
    spider.run()
