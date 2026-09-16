from woocommerce_spider import WooCommerceAPISpider

class ContextoBrSpider(WooCommerceAPISpider):
    """
    Broad crawler for Editora Contexto (Brazil) – major Brazilian academic press and bookstore.
    Brazil: $34.95 / 10 kg M-Bag to the US (Priority Air, 21 days).
    """
    def __init__(self, limit_pages: int = 50, limit_items: int | None = None):
        super().__init__(
            platform_name="Contexto_BR",
            base_url="https://www.editoracontexto.com.br",
            territory="Brazil",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Editora Contexto Brazil bookstore spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()
    ContextoBrSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
