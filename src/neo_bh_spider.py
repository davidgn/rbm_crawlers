from html_search_spider import HTMLSearchSpider

class NeoBooksAndCoffeeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Neo Books and Coffee",
            base_url="https://neobooksandcoffee.com",
            search_path="search?q={query}",
            territory="Bahrain",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="BHD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = NeoBooksAndCoffeeSpider(limit_pages=1, limit_items=5)
    spider.run()
