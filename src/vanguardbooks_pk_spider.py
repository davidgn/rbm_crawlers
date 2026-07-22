from woocommerce_spider import WooCommerceAPISpider

class VanguardBooksPkSpider(WooCommerceAPISpider):
    """
    Broad crawler for Vanguard Books (Pakistan) using WooCommerce API.
    Pakistan is a Tier-1 low-cost M-Bag origin country ($7.92 / 10 kg to US).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="VanguardBooks_PK",
            base_url="https://vanguardbooks.com",
            territory="Pakistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    VanguardBooksPkSpider(limit_pages=args.limit_pages).run()
