from shopify_search_spider import ShopifySearchSpider

class BooksactuallySgSpider(ShopifySearchSpider):
    """
    Shopify-based spider for BooksActually (Singapore) – Singapore's beloved independent literary bookstore.
    Singapore: $27.17 / 10 kg M-Bag to the US (Surface Bulkpost, 60 days).
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="BooksActually_SG",
            base_url="https://booksactuallysing.com",
            territory="Singapore",
            price_currency="SGD",
            limit_items=limit_items,
            **kwargs,
        )

if __name__ == "__main__":
    import argparse, logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="BooksActually Singapore Shopify Spider")
    parser.add_argument("--query", type=str, default="fiction")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    BooksactuallySgSpider(limit_items=args.limit_items).run(search_term=args.query)
