from html_search_spider import HTMLSearchSpider

class GalarnaSiSpider(HTMLSearchSpider):
    """
    Broad crawler for Spletna Knjigarna Galarna (Slovenia) using HTML search parsing.
    Prices are in Euros (EUR).
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None):
        super().__init__(
            platform_name="Galarna Knjigarna",
            base_url="https://www.galarna.si",
            search_path="?lang=sl&mod=search&c=search&q={query}",
            selectors={
                "item_container": ".mct_prod_box",
                "title": ".mct_title h2 a",
                "author": ".mct_manufacturer h3",
                "price": ".mct_real_price, .mct_amount",
                "url": ".mct_title h2 a, a.image-link"
            },
            territory="Slovenia",
            price_currency="EUR",
            limit_pages=limit_pages, limit_items=limit_items
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=None)
    args = parser.parse_args()

    GalarnaSiSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()
