from html_search_spider import HTMLSearchSpider

class LibreriaDeMujeresSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Libreria de Mujeres",
            base_url="https://www.libreriademujeres.com",
            search_path="search?q={query}",
            territory="Spain",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="EUR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LibreriaDeMujeresSpider(limit_pages=1, limit_items=5)
    spider.run()
