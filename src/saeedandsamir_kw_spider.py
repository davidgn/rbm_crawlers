from shopify_search_spider import ShopifySearchSpider

class SaeedAndSamirKwSpider(ShopifySearchSpider):
    """
    Shopify crawler for Saeed & Samir Bookstore (Kuwait).
    Currency: KWD.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int = 50):
        super().__init__(
            platform_name="Saeed & Samir Bookstore",
            base_url="https://saeedandsamir.com",
            territory="Kuwait",
            price_currency="KWD",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()

    SaeedAndSamirKwSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
