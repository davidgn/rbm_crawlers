from shopify_search_spider import ShopifySearchSpider

class MaurilivresMrSpider(ShopifySearchSpider):
    """
    Shopify-based spider for Mauritanie Livres – an online bookshop serving
    the Mauritanian Francophone reading market.
    Mauritania: $75.47 / 10 kg M-Bag to the US (Priority Air, ~40 days).
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="MauriLivres_MR",
            base_url="https://mauritaniabooks.com",
            territory="Mauritania",
            price_currency="MRU",
            limit_items=limit_items,
            **kwargs,
        )

if __name__ == "__main__":
    import argparse, logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Mauritanie Livres Shopify Spider")
    parser.add_argument("--query", type=str, default="livre")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    MaurilivresMrSpider(limit_items=args.limit_items).run(search_term=args.query)
