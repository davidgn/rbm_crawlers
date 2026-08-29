from html_search_spider import HTMLSearchSpider

class BestsellerMdSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Bestseller MD",
            base_url="https://www.bestseller.md",
            search_path="search?q={query}",
            territory="Moldova",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="MDL",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BestsellerMdSpider(limit_pages=1, limit_items=5)
    spider.run()
