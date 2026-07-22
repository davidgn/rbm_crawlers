from woocommerce_spider import WooCommerceAPISpider

class LaMaisonDuLivreTnSpider(WooCommerceAPISpider):
    """
    Broad crawler for La Maison du Livre (Tunisia) – premier Tunisian bookstore and distributor.
    Tunisia: $70.40 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="LaMaisonDuLivre_TN",
            base_url="https://lamaisondulivre.tn",
            territory="Tunisia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="La Maison du Livre Tunisia spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    LaMaisonDuLivreTnSpider(limit_pages=args.limit_pages).run()
