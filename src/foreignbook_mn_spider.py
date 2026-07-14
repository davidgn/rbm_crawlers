from woocommerce_spider import WooCommerceAPISpider

class ForeignbookMnSpider(WooCommerceAPISpider):
    """
    Broad crawler for Foreign Book in Mongolia using WooCommerce API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Foreign Book in Mongolia",
            base_url="https://foreignbookinmongolia.com",
            territory="Mongolia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    
    ForeignbookMnSpider(limit_pages=args.limit_pages).run()
