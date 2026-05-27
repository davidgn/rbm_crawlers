from woocommerce_spider import WooCommerceAPISpider

class GabonLivreGaSpider(WooCommerceAPISpider):
    """
    Spider for Gabon Livre (Gabon).
    The primary online bookstore in Gabon.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Gabon Livre",
            base_url="https://www.gabonlivre.com",
            territory="Gabon",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = GabonLivreGaSpider(limit_pages=1)
    spider.run()
