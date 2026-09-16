from shopify_spider import ShopifyAPISpider

class NollybookBnSpider(ShopifyAPISpider):
    """
    Shopify-based spider for NollyBook (nollybook.com) —
    Brunei's premier online bookstore for fiction, educational, and general literature.
    Brunei outbound M-Bag: RG5 low cost origin.
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="NollyBook",
            base_url="https://nollybook.com",
            territory="Brunei",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="NollyBook Brunei bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    NollybookBnSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
