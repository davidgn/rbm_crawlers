from html_search_spider import HTMLSearchSpider

class BonaireFbSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Facebook Bonaire",
            base_url="https://www.facebook.com",
            search_path="groups/BonaireBuySellTrade/search/?q={query}",
            territory="Bonaire",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = BonaireFbSpider(limit_pages=1, limit_items=5)
    spider.run()
