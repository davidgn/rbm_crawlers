from woocommerce_spider import WooCommerceAPISpider

class KnjizaraRiznicaRsSpider(WooCommerceAPISpider):
    """
    Broad crawler for knjizarariznica.rs (Serbia) using WooCommerce REST API.
    Prices are in Serbian Dinar (RSD).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Knjizara Riznica",
            base_url="https://knjizarariznica.rs",
            territory="Serbia",
            limit_pages=limit_pages
        )
