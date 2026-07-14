from woocommerce_spider import WooCommerceAPISpider

class DarElkitabTnSpider(WooCommerceAPISpider):
    """
    Broad crawler for Dar El Kitab (Tunisia) using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Dar El Kitab",
            base_url="https://dar-elkitab.com.tn",
            territory="Tunisia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    DarElkitabTnSpider(limit_pages=args.limit_pages).run()
