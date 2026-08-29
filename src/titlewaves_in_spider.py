from html_search_spider import HTMLSearchSpider

class TitleWavesSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Title Waves",
            base_url="https://www.titlewaves.in",
            search_path="search?q={query}",
            territory="India",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="INR",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = TitleWavesSpider(limit_pages=1, limit_items=5)
    spider.run()
