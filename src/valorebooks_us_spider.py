from html_search_spider import HTMLSearchSpider

class ValoreBooksUsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="ValoreBooks",
            base_url="https://www.valorebooks.com",
            search_path="Search.do?searchTerm={query}",
            territory="United States",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="USD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = ValoreBooksUsSpider(limit_pages=1, limit_items=5)
    spider.run()
