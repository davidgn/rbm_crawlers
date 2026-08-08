from woocommerce_spider import WooCommerceAPISpider

class ChamnarKhSpider(WooCommerceAPISpider):
    """
    WooCommerce-based spider for Chamnar Bookstore (chamnarbookstore.com) —
    Phnom Penh's leading online bookstore for English and Khmer books,
    with nationwide delivery across Cambodia. 6,511 titles in USD.
    Cambodia outbound M-Bag: $35.57 USD / 30 kg to US.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Chamnar Bookstore",
            base_url="https://chamnarbookstore.com",
            territory="Cambodia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Chamnar Bookstore Cambodia spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    ChamnarKhSpider(limit_pages=args.limit_pages).run()
