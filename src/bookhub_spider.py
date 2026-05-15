from woocommerce_spider import WooCommerceAPISpider

class BookHubSpider(WooCommerceAPISpider):
    def __init__(self, limit_pages=50):
        super().__init__(
            platform_name="BookHub",
            base_url="https://bookhub.in",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = BookHubSpider(limit_pages=2) # Test with 2 pages
    spider.run()
