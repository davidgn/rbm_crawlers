from html_search_spider import HTMLSearchSpider

class CookIslandsFbSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Facebook Rarotonga",
            base_url="https://www.facebook.com",
            search_path="groups/RarotongaBuySellTrade/search/?q={query}",
            territory="Cook Islands",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="NZD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = CookIslandsFbSpider(limit_pages=1, limit_items=5)
    spider.run()
