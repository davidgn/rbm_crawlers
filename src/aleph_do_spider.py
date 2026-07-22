from shopify_search_spider import ShopifySearchSpider

class AlephDoSpider(ShopifySearchSpider):
    """
    Shopify-based spider for Aleph Librería (Dominican Republic) – independent Santo Domingo bookstore.
    Dominican Republic: low-cost Caribbean M-Bag origin.
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Aleph_DO",
            base_url="https://alephlibros.com",
            territory="Dominican Republic",
            price_currency="DOP",
            limit_items=limit_items,
            **kwargs,
        )

if __name__ == "__main__":
    import argparse, logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Aleph Dominican Republic Shopify Spider")
    parser.add_argument("--query", type=str, default="libro")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    AlephDoSpider(limit_items=args.limit_items).run(search_term=args.query)
