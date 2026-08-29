from html_search_spider import HTMLSearchSpider

class MagungaBookstoreKeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Magunga Bookstore KE",
            base_url="https://magungabookstore.com",
            search_path="search?q={query}",
            territory="Kenya",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="KES",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MagungaBookstoreKeSpider(limit_pages=1, limit_items=5)
    spider.run()
