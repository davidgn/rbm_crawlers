from html_search_spider import HTMLSearchSpider

class ChristmasIslandFbSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Facebook Christmas Island",
            base_url="https://www.facebook.com",
            search_path="groups/ChristmasIslandBuySellTrade/search/?q={query}",
            territory="Christmas Island",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AUD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ChristmasIslandFbSpider(limit_pages=1, limit_items=5)
    spider.run()
