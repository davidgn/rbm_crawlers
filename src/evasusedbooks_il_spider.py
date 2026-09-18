from shopify_search_spider import ShopifySearchSpider

class EvasUsedBooksIlSpider(ShopifySearchSpider):
    """
    Broad crawler for Eva's Used Books (Israel) using Shopify API.
    Prices are in New Israeli Shekels (ILS).
    """
    def __init__(self, limit_pages: int = 5, limit_items: int = 50):
        super().__init__(
            platform_name="Eva's Used Books",
            base_url="https://evasusedbooks.co",
            territory="Israel",
            price_currency="ILS",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()

    EvasUsedBooksIlSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
