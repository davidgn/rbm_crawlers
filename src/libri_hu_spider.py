from html_search_spider import HTMLSearchSpider

class LibriHuSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Libri HU",
            base_url="https://www.libri.hu",
            search_path="search?q={query}",
            territory="Hungary",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="HUF",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = LibriHuSpider(limit_pages=1, limit_items=5)
    spider.run()
