from html_search_spider import HTMLSearchSpider

class SvalbardFbSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Facebook Longyearbyen",
            base_url="https://www.facebook.com",
            search_path="groups/longyearbyen.buy.sell/search/?q={query}",
            territory="Svalbard and Jan Mayen",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="NOK",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SvalbardFbSpider(limit_pages=1, limit_items=5)
    spider.run()
