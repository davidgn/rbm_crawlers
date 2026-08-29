from html_search_spider import HTMLSearchSpider

class LaEsquinaPaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="La Esquina PA",
            base_url="https://laesquina.com.pa",
            search_path="search?q={query}",
            territory="Panama",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="PAB",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LaEsquinaPaSpider(limit_pages=1, limit_items=5)
    spider.run()
