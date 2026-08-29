from html_search_spider import HTMLSearchSpider

class BookclubMtSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="BookClub MT",
            base_url="https://bookclub.com.mt",
            search_path="search?q={query}",
            territory="Malta",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BookclubMtSpider(limit_pages=1, limit_items=5)
    spider.run()
