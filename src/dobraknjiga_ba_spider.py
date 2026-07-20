from woocommerce_spider import WooCommerceAPISpider

class DobraknjigaBaSpider(WooCommerceAPISpider):
    """
    Broad crawler for Dobra Knjiga Knjižara & Izdavaštvo (Bosnia and Herzegovina) using WooCommerce API.
    Prices are in Bosnia-Herzegovina Convertible Marks (BAM).
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="Dobra Knjiga",
            base_url="https://dobraknjiga.ba",
            territory="Bosnia and Herzegovina",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    DobraknjigaBaSpider(limit_pages=args.limit_pages).run()
