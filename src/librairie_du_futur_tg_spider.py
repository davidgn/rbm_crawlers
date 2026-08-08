from woocommerce_spider import WooCommerceAPISpider

class LibrairieDuFuturTgSpider(WooCommerceAPISpider):
    """
    WooCommerce-based spider for Librairie du Futur (Lomé, Togo).
    Specializes in children's books, comics, manga, literature, and educational titles.
    Togo outbound M-Bag: $79.78 USD / 30 kg to US.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Librairie du Futur",
            base_url="https://www.librairiedufutur.com",
            territory="Togo",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Librairie du Futur Togo bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    LibrairieDuFuturTgSpider(limit_pages=args.limit_pages).run()
