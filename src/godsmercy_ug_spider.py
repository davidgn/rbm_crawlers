from html_search_spider import HTMLSearchSpider

class GodSMercyBookshopSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="God's Mercy Bookshop",
            base_url="https://godsmercybookshop.com",
            search_path="search?q={query}",
            territory="Uganda",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="UGX",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = GodSMercyBookshopSpider(limit_pages=1, limit_items=5)
    spider.run()
