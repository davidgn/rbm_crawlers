import argparse
from playwright_search_spider import PlaywrightSearchSpider


class UniversityOfWestLondonStudentsUnionSpider(PlaywrightSearchSpider):
    """Playwright-based spider for University of West London Students Union (MSL platform)."""

    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="University of West London Students Union",
            base_url="https://www.uwlsu.com",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': (
                    '.msl-search-result, .msl_search_result, .search-result, '
                    'li.search-result, .product-list-item, .product-card, '
                    'div.search-result-row, .msl-shop-item'
                ),
                'title': (
                    '.msl-search-result-title a, .msl-shop-item-title a, '
                    '.search-result-title a, h3 a, h2 a, a.title, .title'
                ),
                'link': (
                    '.msl-search-result-title a, .msl-shop-item-title a, '
                    '.search-result-title a, h3 a, h2 a, a.title, a'
                ),
                'price': (
                    '.msl-search-result-price, .msl-shop-item-price, '
                    '.price, .product-price, .item-price, span.price'
                ),
                'author': (
                    '.msl-search-result-author, .msl-shop-item-description, '
                    '.author, .item-author, p.author'
                ),
            },
            territory="United Kingdom",
            price_currency="GBP",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )


if __name__ == "__main__":
    import logging
    logging.basicConfig(level=logging.INFO)
    parser = argparse.ArgumentParser(description="University of West London Students Union Playwright Spider")
    parser.add_argument("--query", type=str, default="textbook")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()
    spider = UniversityOfWestLondonStudentsUnionSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
