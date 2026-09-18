from shopify_search_spider import ShopifySearchSpider

class ZambeziJoySocietyZmSpider(ShopifySearchSpider):
    """
    Broad crawler for Zambezi Joy Society (Zambia) using Shopify API.
    Prices are in USD.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int = 50):
        super().__init__(
            platform_name="Zambezi Joy Society",
            base_url="https://zambezijoysociety.com",
            territory="Zambia",
            price_currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()

    ZambeziJoySocietyZmSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
