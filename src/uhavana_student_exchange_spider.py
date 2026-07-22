from html_search_spider import HTMLSearchSpider

class UhavanaStudentExchangeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="University of Havana Exchange",
            base_url="https://www.uh.cu",
            search_path="exchange?q={query}",
            territory="Cuba",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="CUP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = UhavanaStudentExchangeSpider(limit_pages=1, limit_items=5)
    spider.run()
