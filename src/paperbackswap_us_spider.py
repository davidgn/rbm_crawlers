from html_search_spider import HTMLSearchSpider

class PaperBackSwapUsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="PaperBackSwap",
            base_url="https://www.paperbackswap.com",
            search_path="search.php?q={query}",
            territory="United States",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = PaperBackSwapUsSpider(limit_pages=1, limit_items=5)
    spider.run()
