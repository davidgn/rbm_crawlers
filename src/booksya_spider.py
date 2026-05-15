from woocommerce_spider import WooCommerceAPISpider

class BooksYaSpider(WooCommerceAPISpider):
    def __init__(self, limit_pages=50):
        super().__init__(
            platform_name="BooksYa",
            base_url="https://booksya.com",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BooksYaSpider(limit_pages=2)
    spider.run()
