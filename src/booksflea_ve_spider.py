from woocommerce_spider import WooCommerceAPISpider

class BooksfleaVeSpider(WooCommerceAPISpider):
    """
    Broad crawler for Booksflea (Venezuela) using WooCommerce API.
    Prices are extracted in USD.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Booksflea",
            base_url="https://booksflea.com",
            territory="Venezuela",
            limit_pages=limit_pages
        )
