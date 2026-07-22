from html_search_spider import HTMLSearchSpider

class ArubaTodayAwSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Aruba Today Classifieds",
            base_url="https://classifieds.arubatoday.com",
            search_path="?q={query}",
            territory="Aruba",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AWG",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ArubaTodayAwSpider(limit_pages=1, limit_items=5)
    spider.run()
