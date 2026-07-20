from html_search_spider import HTMLSearchSpider

class ZachejSkSpider(HTMLSearchSpider):
    """
    Broad crawler for Zachej Kníhkupectvo (Slovakia) using HTML search parsing.
    Prices are in Euros (EUR).
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="Zachej Knihkupectvo",
            base_url="https://www.zachej.sk",
            search_path="vyhladavanie?query={query}",
            selectors={
                "item_container": "a[href*='/produkt/']",
                "title": "p, img[alt]",
                "author": "",
                "price": "p",
                "url": "a"
            },
            territory="Slovakia",
            price_currency="EUR",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    ZachejSkSpider(limit_pages=args.limit_pages).run()
