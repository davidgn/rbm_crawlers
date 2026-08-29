from shopify_search_spider import ShopifySearchSpider

class ZambeziJoySocietyZmSpider(ShopifySearchSpider):
    """
    Broad crawler for Zambezi Joy Society (Zambia) using Shopify API.
    Prices are in USD.
    """
    def __init__(self, limit_items: int = 50):
        super().__init__(
            platform_name="Zambezi Joy Society",
            base_url="https://zambezijoysociety.com",
            territory="Zambia",
            price_currency="USD",
            limit_items=limit_items
        )
