from html_search_spider import HTMLSearchSpider

class WisdomBookshopCameroonSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Wisdom Bookshop Cameroon",
            base_url="https://www.wisdombookshop.cm",
            search_path="search?q={query}",
            territory="Cameroon",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="XAF",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = WisdomBookshopCameroonSpider(limit_pages=1, limit_items=5)
    spider.run()
