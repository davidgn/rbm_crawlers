from html_search_spider import HTMLSearchSpider

class Yad2IlSpider(HTMLSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        super().__init__(
            platform_name="Yad2",
            base_url="https://www.yad2.co.il",
            search_path="products/books?info={query}",
            territory="Israel",
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency="ILS",
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    spider = Yad2IlSpider(limit_pages=1, limit_items=5)
    spider.run()
