from shopify_search_spider import ShopifySearchSpider

class TheenglishbookshopKwSpider(ShopifySearchSpider):
    """
    Broad crawler for The English Bookshop (Kuwait) using Shopify Suggest API.
    Prices are in Kuwaiti Dinars (KWD).
    """
    def __init__(self, limit_pages: int = 5, limit_items: int = 50):
        super().__init__(
            platform_name="The English Bookshop",
            base_url="https://theenglishbookshop.com",
            territory="Kuwait",
            price_currency="KWD",
            limit_pages=limit_pages,
            limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    TheenglishbookshopKwSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
