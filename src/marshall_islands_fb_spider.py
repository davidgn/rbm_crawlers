from html_search_spider import HTMLSearchSpider

class MarshallIslandsFbSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Facebook Marshall Islands",
            base_url="https://www.facebook.com",
            search_path="groups/MarshallIslandsBuySellTrade/search/?q={query}",
            territory="Marshall Islands",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = MarshallIslandsFbSpider(limit_pages=1, limit_items=5)
    spider.run()
