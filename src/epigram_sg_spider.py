from html_search_spider import HTMLSearchSpider

class EpigramBooksSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Epigram Books",
            base_url="https://epigrambookshop.sg",
            search_path="search?q={query}",
            territory="Singapore",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="SGD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = EpigramBooksSpider(limit_pages=1, limit_items=5)
    spider.run()
