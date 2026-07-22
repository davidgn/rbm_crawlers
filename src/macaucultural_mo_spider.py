from woocommerce_spider import WooCommerceAPISpider

class MacauCulturalMoSpider(WooCommerceAPISpider):
    """
    Broad crawler for Plaza Cultural Macau (Macao).
    Macao is a low-cost M-Bag origin country ($49.63 / 10 kg to US).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="PlazaCultural_MO",
            base_url="https://macaucultural.com",
            territory="Macao",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    MacauCulturalMoSpider(limit_pages=args.limit_pages).run()
