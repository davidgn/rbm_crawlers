from html_search_spider import HTMLSearchSpider

class SanfranciscoCoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Librería San Francisco",
            base_url="https://libreriasanfrancisco.com.co",
            search_path="buscar?q={query}",
            territory="Colombia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="COP",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SanfranciscoCoSpider(limit_pages=1, limit_items=5)
    spider.run()
