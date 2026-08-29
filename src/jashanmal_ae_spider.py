from html_search_spider import HTMLSearchSpider

class JashanmalSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Jashanmal",
            base_url="https://www.jashanmal.com",
            search_path="search?q={query}",
            territory="UAE",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AED",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = JashanmalSpider(limit_pages=1, limit_items=5)
    spider.run()
