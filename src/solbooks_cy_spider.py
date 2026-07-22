from shopify_search_spider import ShopifySearchSpider

class SolbooksCySpider(ShopifySearchSpider):
    """
    Shopify-based spider for Sol Books (Cyprus) – Nicosia's English-language independent bookstore.
    Cyprus: $38.10 / 10 kg M-Bag to the US (2nd Priority Air, 21 days).
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="SolBooks_CY",
            base_url="https://solbooks.com.cy",
            territory="Cyprus",
            price_currency="EUR",
            limit_items=limit_items,
            **kwargs,
        )

if __name__ == "__main__":
    import argparse, logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Sol Books Cyprus Shopify Spider")
    parser.add_argument("--query", type=str, default="fiction")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    SolbooksCySpider(limit_items=args.limit_items).run(search_term=args.query)
