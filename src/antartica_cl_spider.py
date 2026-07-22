from shopify_search_spider import ShopifySearchSpider

class BooksForChileClSpider(ShopifySearchSpider):
    """
    Shopify-based spider for Antartica (antartica.cl) – Chile's largest online
    book marketplace.
    Chile: $86.50 / 10 kg M-Bag to the US (Priority Air, 14 days).
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Antartica_CL",
            base_url="https://www.antartica.cl",
            territory="Chile",
            price_currency="CLP",
            limit_items=limit_items,
            **kwargs,
        )

if __name__ == "__main__":
    import argparse, logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Antartica Chile Shopify Spider")
    parser.add_argument("--query", type=str, default="libro")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    BooksForChileClSpider(limit_items=args.limit_items).run(search_term=args.query)
