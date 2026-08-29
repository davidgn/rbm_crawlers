from woocommerce_spider import WooCommerceAPISpider

class EKnjizaraRsSpider(WooCommerceAPISpider):
    """
    Broad crawler for eKnjizara.rs (Serbia) using WooCommerce REST API.
    Prices are in Serbian Dinar (RSD).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="eKnjizara",
            base_url="https://eknjizara.rs",
            territory="Serbia",
            limit_pages=limit_pages
        )
