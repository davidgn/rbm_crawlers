from html_search_spider import HTMLSearchSpider

class SpineAndLabelSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Spine and Label",
            base_url="https://spineandlabel.com",
            search_path="search?q={query}",
            territory="Nigeria",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="NGN",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = SpineAndLabelSpider(limit_pages=1, limit_items=5)
    spider.run()
