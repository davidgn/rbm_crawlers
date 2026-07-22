from woocommerce_spider import WooCommerceAPISpider

class SageSenegalSnSpider(WooCommerceAPISpider):
    """
    Broad crawler for SAGE Librairie (Senegal) – a WooCommerce-based bookshop
    serving the Dakar and wider Senegalese market.
    Senegal: $97.51 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="SAGE_SN",
            base_url="https://sagelibrairie.sn",
            territory="Senegal",
            limit_pages=limit_pages,
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="SAGE Librairie Senegal spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    SageSenegalSnSpider(limit_pages=args.limit_pages).run()
