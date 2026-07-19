from woocommerce_spider import WooCommerceAPISpider

class TiranabookAlSpider(WooCommerceAPISpider):
    """
    Broad crawler for Tirana Book (Albania) using WooCommerce API.
    Prices are in Albanian Lek (ALL) with currency_minor_unit=0
    (i.e. 1000 means 1000 ALL = 1000 Lek, no minor units).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Tirana Book",
            base_url="https://tiranabook.al",
            territory="Albania",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    TiranabookAlSpider(limit_pages=args.limit_pages).run()
