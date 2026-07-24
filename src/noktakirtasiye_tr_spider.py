from html_search_spider import HTMLSearchSpider

class NoktakirtasiyeTrSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Nokta Kırtasiye",
            base_url="https://www.noktakirtasiye.com",
            search_path="arama?q={query}",
            territory="Turkey",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="TRY",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = NoktakirtasiyeTrSpider(limit_pages=1, limit_items=5)
    spider.run()
