from html_search_spider import HTMLSearchSpider

class UniversidadeNacionalTimorLorosaeUntlSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="UniversidadeNacionalTimorLorosaeUNTL",
            base_url="https://untl.edu.tl/pt/",
            search_path="?q={query}",
            territory="Timor-Leste",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = UniversidadeNacionalTimorLorosaeUntlSpider(limit_pages=1, limit_items=5)
    spider.run()
