from shopify_search_spider import ShopifySearchSpider

class SaeedAndSamirKwSpider(ShopifySearchSpider):
    """
    Shopify crawler for Saeed & Samir Bookstore (Kuwait).
    Currency: KWD.
    """
    def __init__(self, limit_items: int = 50):
        super().__init__(
            platform_name="Saeed & Samir Bookstore",
            base_url="https://saeedandsamir.com",
            territory="Kuwait",
            price_currency="KWD",
            limit_items=limit_items
        )
