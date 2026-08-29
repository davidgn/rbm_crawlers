from html_search_spider import HTMLSearchSpider

class TertuliaBooksIeSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Tertulia Books IE",
            base_url="https://tertuliabookshop.com",
            search_path="search?q={query}",
            territory="Ireland",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = TertuliaBooksIeSpider(limit_pages=1, limit_items=5)
    spider.run()
