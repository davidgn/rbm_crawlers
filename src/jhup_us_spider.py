from html_search_spider import HTMLSearchSpider

class JohnsHopkinsUpSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Johns Hopkins UP",
            base_url="https://press.jhu.edu",
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
    spider = JohnsHopkinsUpSpider(limit_pages=1, limit_items=5)
    spider.run()
