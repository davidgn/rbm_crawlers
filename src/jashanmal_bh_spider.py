from shopify_search_spider import ShopifySearchSpider

class JashanmalBhSpider(ShopifySearchSpider):
    """
    Broad crawler for Jashanmal (Bahrain) using Shopify API.
    Note: The Shopify API returns prices in AED, as Jashanmal's primary catalog is UAE-based,
    but they dispatch to Bahrain via their local presence.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int = 50):
        super().__init__(
            platform_name="Jashanmal",
            base_url="https://www.jashanmal.com",
            territory="Bahrain",
            price_currency="AED",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()

    JashanmalBhSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
