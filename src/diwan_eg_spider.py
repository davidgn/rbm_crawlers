from html_search_spider import HTMLSearchSpider

class DiwanEgSpider(HTMLSearchSpider):
    """
    Spider for Diwan Bookstore (Egypt).
    The leading lifestyle bookstore in Egypt.
    Uses WordPress/WooCommerce.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Diwan Bookstore",
            base_url="https://diwanegypt.com",
            search_path="?s={query}&post_type=product",
            selectors={
                'container': 'li.product', 
                'title': '.woocommerce-loop-product__title',
                'link': 'a.woocommerce-LoopProduct-link',
                'price': '.price',
            },
            territory="Egypt",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = DiwanEgSpider(limit_pages=1)
    spider.run()
