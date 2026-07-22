from html_search_spider import HTMLSearchSpider

class ZangakbookstoreAmSpider(HTMLSearchSpider):
    """
    Broad crawler for Zangak Bookstore (Armenia) using HTML search parsing.
    Prices are in Armenian Dram (AMD).
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="Zangak Bookstore",
            base_url="https://zangakbookstore.am",
            search_path="search?q={query}",
            selectors={
                "container": "div.product-box",
                "title": "h1 a",
                "price": "div.product-price",
                "link": "h1 a"
            },
            territory="Armenia",
            price_currency="AMD",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    ZangakbookstoreAmSpider(limit_pages=args.limit_pages).run()
