from shopify_search_spider import ShopifySearchSpider

class PashoshimIlSpider(ShopifySearchSpider):
    """
    Broad crawler for Pashoshim (Israel) using Shopify API.
    Prices are in New Israeli Shekels (ILS).
    """
    def __init__(self, limit_items: int = 50):
        super().__init__(
            platform_name="Pashoshim",
            base_url="https://pashoshim.com",
            territory="Israel",
            price_currency="ILS",
            limit_items=limit_items
        )
