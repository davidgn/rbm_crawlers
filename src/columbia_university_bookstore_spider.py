import argparse
from playwright_search_spider import PlaywrightSearchSpider

class ColumbiaUniversityBookstoreSpider(PlaywrightSearchSpider):
    """
    Playwright-based spider for Columbia University Bookstore (BN College).
    BN College portals use the same DOM structure as UPenn Bookstore.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        territory = kwargs.pop("territory", "United States")
        price_currency = kwargs.pop("price_currency", "USD")
        super().__init__(
            platform_name="Columbia University Bookstore",
            base_url="https://columbia.bncollege.com",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': (
                    'div.product-card, div.product-tile, div.bnc-product-card, '
                    'div.search-result-item, div[class*="product-card"], '
                    'div[class*="ProductCard"]'
                ),
                'title': (
                    '.product-title, .product-card-title, h3.product-title, '
                    'h3.product-card-title, a.product-title, a[class*="title"], '
                    '[class*="product-title"], a.name, .name'
                ),
                'link': (
                    'a.product-title, .product-title a, a[class*="title"], '
                    '[class*="product-title"] a, a.name, .name a, a[class*="name"]'
                ),
                'price': (
                    '.price, .product-price, .product-card-price, '
                    'span[class*="price"], .bnc-price, .price-display'
                ),
                'author': (
                    '.author, .product-author, .product-card-author, '
                    '[class*="author"], .by-author'
                ),
            },
            territory=territory,
            price_currency=price_currency,
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Columbia University Bookstore Playwright Spider")
    parser.add_argument("--query", type=str, default="economics")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()

    spider = ColumbiaUniversityBookstoreSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
