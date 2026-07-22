from woocommerce_spider import WooCommerceAPISpider

class AgoraTogoTgSpider(WooCommerceAPISpider):
    """
    Broad crawler for Agora Togo Livres – Togolese online bookstore using WooCommerce.
    Togo: $106.37 / 10 kg M-Bag to the US (Priority Air, ~60 days).
    Togo has zero dedicated bookstore spiders in the repository.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="AgoraTogo_TG",
            base_url="https://agoratogolivres.com",
            territory="Togo",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Agora Togo Livres bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    AgoraTogoTgSpider(limit_pages=args.limit_pages).run()
