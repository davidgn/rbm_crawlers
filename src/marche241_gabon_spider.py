from html_search_spider import HTMLSearchSpider

class Marche241GabonSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Marché241",
            base_url="http://www.marche241.ga",
            search_path="search?q={search_term}",
            selectors={'container': 'div.item', 'title': 'h3', 'price': '.price'},
            territory="Gabon",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="XAF",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = Marche241GabonSpider(limit_pages=1, limit_items=5)
    spider.run()
