from woocommerce_spider import WooCommerceAPISpider

class LogosMwSpider(WooCommerceAPISpider):
    """
    WooCommerce-based spider for Logos Open Culture / Chambo Market (Malawi).
    Provides access to Malawian literature, history, and academic publications.
    Malawi: $147.56 / 30 kg M-Bag to the US.

    NOTE: The WooCommerce store at logosmw.org currently has no products
    listed (empty catalog), so this spider will yield 0 items until they
    add stock. The site architecture is confirmed WooCommerce-based.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Logos Open Culture",
            base_url="https://www.logosmw.org",
            territory="Malawi",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Logos Open Culture Malawi bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    LogosMwSpider(limit_pages=args.limit_pages).run()
