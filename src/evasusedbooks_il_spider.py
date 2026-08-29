from shopify_search_spider import ShopifySearchSpider

class EvasUsedBooksIlSpider(ShopifySearchSpider):
    """
    Broad crawler for Eva's Used Books (Israel) using Shopify API.
    Prices are in New Israeli Shekels (ILS).
    """
    def __init__(self, limit_items: int = 50):
        super().__init__(
            platform_name="Eva's Used Books",
            base_url="https://evasusedbooks.co",
            territory="Israel",
            price_currency="ILS",
            limit_items=limit_items
        )
