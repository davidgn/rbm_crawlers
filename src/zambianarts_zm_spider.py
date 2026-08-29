from woocommerce_spider import WooCommerceAPISpider

class ZambianArtsZmSpider(WooCommerceAPISpider):
    """
    Broad crawler for Zambian ARTS Publishing House (Zambia) using WooCommerce API.
    Prices are in Zambian Kwacha (ZMW).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Zambian ARTS Publishing House",
            base_url="https://zambianarts.org",
            territory="Zambia",
            limit_pages=limit_pages
        )
