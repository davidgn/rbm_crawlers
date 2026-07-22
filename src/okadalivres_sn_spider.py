from shopify_search_spider import ShopifySearchSpider

class OkadaLivresSenegalSnSpider(ShopifySearchSpider):
    """
    Shopify-based spider for Okada Livres (Senegal) – a growing online
    bookstore targeting the Francophone West Africa market.
    Senegal: $97.51 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="OkadaLivres_SN",
            base_url="https://okadalivres.com",
            territory="Senegal",
            price_currency="XOF",
            limit_items=limit_items,
            **kwargs,
        )

if __name__ == "__main__":
    import argparse, logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Okada Livres Senegal Shopify Spider")
    parser.add_argument("--query", type=str, default="roman")
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    OkadaLivresSenegalSnSpider(limit_items=args.limit_items).run(search_term=args.query)
