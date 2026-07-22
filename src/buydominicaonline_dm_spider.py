from woocommerce_spider import WooCommerceAPISpider

class BuyDominicaOnlineDmSpider(WooCommerceAPISpider):
    """
    Broad crawler for BuyDominicaOnline (Dominica) using WooCommerce API.
    Dominica is a low-cost M-Bag origin country ($31.48 / 10 kg to US).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BuyDominicaOnline_DM",
            base_url="https://buydominicaonline.com",
            territory="Dominica",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    BuyDominicaOnlineDmSpider(limit_pages=args.limit_pages).run()
