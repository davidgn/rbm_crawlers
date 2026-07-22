from html_search_spider import HTMLSearchSpider

class PitcairnIslandsFbSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Facebook Pitcairn Islands",
            base_url="https://www.facebook.com",
            search_path="groups/PitcairnBuySellTrade/search/?q={query}",
            territory="Pitcairn Islands",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="NZD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = PitcairnIslandsFbSpider(limit_pages=1, limit_items=5)
    spider.run()
