from shopify_search_spider import ShopifySearchSpider

class KuwaitbookstoreKwSpider(ShopifySearchSpider):
    """
    Broad crawler for Kuwait Book Store (Kuwait) using Shopify Suggest API.
    Prices are in Kuwaiti Dinars (KWD).
    """
    def __init__(self, limit_items: int = 50):
        super().__init__(
            platform_name="Kuwait Book Store",
            base_url="https://kuwaitbookstore.com",
            territory="Kuwait",
            price_currency="KWD",
            limit_items=limit_items
        )

if __name__ == "__main__":
    spider = KuwaitbookstoreKwSpider(limit_items=5)
    for listing in spider.yield_listings():
        print(listing.model_dump_json(indent=2))
