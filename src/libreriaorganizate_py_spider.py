from woocommerce_spider import WooCommerceAPISpider

class LibreriaOrganizatePySpider(WooCommerceAPISpider):
    """
    WooCommerce spider for Libreria Organizate (Paraguay).
    Currency: PYG (Paraguayan Guarani).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Libreria Organizate",
            base_url="https://libreriaorganizate.com.py",
            territory="Paraguay",
            limit_pages=limit_pages
        )
