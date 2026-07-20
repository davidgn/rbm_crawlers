from shopify_search_spider import ShopifySearchSpider

class ChampacaInSpider(ShopifySearchSpider):
    """
    Broad crawler for Champaca Bookstore (India) using Shopify suggest API.
    Prices are in Indian Rupees (INR).
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Champaca Bookstore",
            base_url="https://champaca.in",
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

    ChampacaInSpider(limit_pages=args.limit_pages).run()
