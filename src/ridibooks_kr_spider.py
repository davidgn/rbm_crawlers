from html_search_spider import HTMLSearchSpider

class RidibooksKrSpider(HTMLSearchSpider):
    """
    Broad crawler for RIDI Books (South Korea) using HTML search parsing.
    Prices are in South Korean Won (KRW).
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="RIDI Books",
            base_url="https://ridibooks.com",
            search_path="search?q={query}",
            selectors={
                "item_container": "li.rigrid-1p3m9ts",
                "title": "span.rigrid-1scwn5",
                "author": "span.rigrid-yjumpd a",
                "price": "p.rigrid-1bwby95",
                "url": "a[href*='/books/']"
            },
            territory="South Korea",
            price_currency="KRW",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    RidibooksKrSpider(limit_pages=args.limit_pages).run()
