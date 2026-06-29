from html_search_spider import HTMLSearchSpider

class MoufflonCySpider(HTMLSearchSpider):
    """Native spider for Moufflon Bookshop (Cyprus)."""
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(
            platform_name="Moufflon Bookshop",
            base_url="https://moufflon.com.cy",
            search_path="?s={query}&post_type=product&paged={page}",
            selectors={'container': 'li.product', 'title': '.woocommerce-loop-product__title', 'price': '.price'},
            territory="Cyprus",
            limit_pages=limit_pages,
            **kwargs
        )

if __name__ == "__main__":
    spider = MoufflonCySpider()
    spider.run()
