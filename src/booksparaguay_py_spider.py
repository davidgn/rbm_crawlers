from shopify_spider import ShopifyAPISpider

class BooksParaguayPySpider(ShopifyAPISpider):
    """
    Shopify-based spider for Books Paraguay (booksparaguay.com) —
    major bookstore chain with locations in Shopping del Sol, Mariscal, and Asunción (prices in PYG).
    Paraguay outbound M-Bag: low cost origin ($39.92 / 30 kg).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Books Paraguay",
            base_url="https://www.booksparaguay.com",
            territory="Paraguay",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Books Paraguay spider")
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()
    BooksParaguayPySpider(limit_pages=args.limit_pages).run()
