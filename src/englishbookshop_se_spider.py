from html_search_spider import HTMLSearchSpider

class EnglishBookshopSeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="English Bookshop SE",
            base_url="https://englishbookshop.se",
            search_path="search?q={query}",
            territory="Sweden",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="SEK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = EnglishBookshopSeSpider(limit_pages=1, limit_items=5)
    spider.run()
