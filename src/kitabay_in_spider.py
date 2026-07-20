from shopify_search_spider import ShopifySearchSpider

class KitabayInSpider(ShopifySearchSpider):
    """
    Broad crawler for Kitabay (India) using Shopify Suggest API.
    Prices are in INR.
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Kitabay",
            base_url="https://kitabay.com",
            territory="India",
            price_currency="INR",
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    KitabayInSpider(limit_pages=args.limit_pages).run()
