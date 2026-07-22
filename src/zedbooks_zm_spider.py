from woocommerce_spider import WooCommerceAPISpider

class ZedbooksZmSpider(WooCommerceAPISpider):
    """
    Broad crawler for Zed Books Zambia – Zambian online bookstore using WooCommerce.
    Zambia: $40.97 / 10 kg M-Bag to the US (Priority Air, 21 days).
    Note: distinct from ZedBookstore (zedbookstore_zm_spider.py) which is a used-books classifieds site.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ZedBooks_ZM",
            base_url="https://zedbooks.co.zm",
            territory="Zambia",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Zed Books Zambia bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    ZedbooksZmSpider(limit_pages=args.limit_pages).run()
