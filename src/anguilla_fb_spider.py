from html_search_spider import HTMLSearchSpider

class AnguillaFbSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Facebook Anguilla",
            base_url="https://www.facebook.com",
            search_path="groups/AnguillaBuySellTrade/search/?q={query}",
            territory="Anguilla",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="XCD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = AnguillaFbSpider(limit_pages=1, limit_items=5)
    spider.run()
