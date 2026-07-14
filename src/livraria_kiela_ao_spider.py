from html_search_spider import HTMLSearchSpider

class LivrariaKielaAoSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Livraria Kiela",
            base_url="https://livrariakiela.com",
            search_path="?s={query}",
            territory="Angola",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="AOA",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LivrariaKielaAoSpider(limit_pages=1, limit_items=5)
    spider.run()
