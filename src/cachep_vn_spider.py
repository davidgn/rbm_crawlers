from html_search_spider import HTMLSearchSpider

class CachepVnSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Nha Sach Ca Chep",
            base_url="https://cachep.vn",
            search_path="search?q={query}",
            territory="Vietnam",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="VND",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = CachepVnSpider(limit_pages=1, limit_items=5)
    spider.run()
