from woocommerce_spider import WooCommerceAPISpider

class IcklebooksBnSpider(WooCommerceAPISpider):
    """
    WooCommerce-based spider for Icklebooks (icklebooks.com) —
    independent bookstore in Bandar Seri Begawan, Brunei (4,310+ titles in BND).
    Brunei outbound M-Bag: RG5 low cost origin.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Icklebooks",
            base_url="https://icklebooks.com",
            territory="Brunei",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Icklebooks Brunei bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    IcklebooksBnSpider(limit_pages=args.limit_pages).run()
