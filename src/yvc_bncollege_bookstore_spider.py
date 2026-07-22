import argparse
from playwright_search_spider import PlaywrightSearchSpider


class YvcBookstoreSpider(PlaywrightSearchSpider):
    """Playwright-based spider for Yvc Bookstore (BN College platform)."""

    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Yvc Bookstore",
            base_url="https://yvc.bncollege.com",
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
                    '[class*="product-title"]'
                ),
                'link': (
                    'a.product-title, .product-title a, a[class*="title"], '
                    '[class*="product-title"] a'
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
            territory="United States",
            price_currency="USD",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )


if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="Yvc Bookstore Playwright Spider")
    parser.add_argument("--query", type=str, default="textbook")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    spider = YvcBookstoreSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
