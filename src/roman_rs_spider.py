from html_search_spider import HTMLSearchSpider

class KnjizaraRomanSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Knjizara Roman",
            base_url="https://knjizararoman.rs",
            search_path="search?q={query}",
            territory="Serbia",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="RSD",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = KnjizaraRomanSpider(limit_pages=1, limit_items=5)
    spider.run()
