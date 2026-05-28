from woocommerce_spider import WooCommerceAPISpider

class VajraBooksNpSpider(WooCommerceAPISpider):
    """
    Spider for Vajra Books (Nepal).
    A leading academic and specialist bookstore in Kathmandu.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Vajra Books",
            base_url="https://vajrabookshop.com",
            territory="Nepal",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = VajraBooksNpSpider(limit_pages=1)
    spider.run()
