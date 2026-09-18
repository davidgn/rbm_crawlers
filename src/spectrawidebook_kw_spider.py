from shopify_search_spider import ShopifySearchSpider

class SpectrawideBookKwSpider(ShopifySearchSpider):
    """
    Broad crawler for Spectrawide Bookstore (Kuwait) using Shopify Suggest API.
    Prices are in Kuwaiti Dinars (KWD).
    """
    def __init__(self, limit_pages: int = 5, limit_items: int = 50):
        super().__init__(
            platform_name="Spectrawide Bookstore",
            base_url="https://spectrawidebook.store",
            territory="Kuwait",
            price_currency="KWD",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=5)
    args = parser.parse_args()
    SpectrawideBookKwSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run(search_term=args.query)
