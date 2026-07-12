import argparse
from playwright_search_spider import PlaywrightSearchSpider

class KclStudentUnionSpider(PlaywrightSearchSpider):
    """
    Playwright-based spider for KCL Student Union (KCLSU) marketplace.
    KCLSU runs on the MSL (Membership Solutions Ltd) platform.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        territory = kwargs.pop("territory", "United Kingdom")
        price_currency = kwargs.pop("price_currency", "GBP")
        super().__init__(
            platform_name="KCL Student Union (King's College London)",
            base_url="https://www.kclsu.org",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': (
                    '.msl-search-result, .msl_search_result, .search-result, '
                    'li.search-result, .product-list-item, .product-card, '
                    'div.search-result-row, .msl-shop-item, .msl-book-item'
                ),
                'title': (
                    '.msl-search-result-title a, .msl-shop-item-title a, '
                    '.search-result-title a, h3 a, h2 a, a.title, .title, '
                    '.msl-book-title a'
                ),
                'link': (
                    '.msl-search-result-title a, .msl-shop-item-title a, '
                    '.search-result-title a, h3 a, h2 a, a.title, a, '
                    '.msl-book-title a'
                ),
                'price': (
                    '.msl-search-result-price, .msl-shop-item-price, '
                    '.price, .product-price, .item-price, span.price, '
                    '.msl-book-price'
                ),
                'author': (
                    '.msl-search-result-author, .msl-shop-item-description, '
                    '.author, .item-author, p.author, .msl-book-author'
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
    parser = argparse.ArgumentParser(description="KCL Student Union Playwright Spider")
    parser.add_argument("--query", type=str, default="economics textbook")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()

    spider = KclStudentUnionSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
