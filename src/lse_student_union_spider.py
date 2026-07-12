import logging
from playwright_search_spider import PlaywrightSearchSpider

class LseStudentUnionSpider(PlaywrightSearchSpider):
    def __init__(self, limit_pages=5, limit_items=None, **kwargs):
        selectors = {
            "container": (
                ".msl-search-result, .msl_search_result, .search-result, "
                "li.search-result, .product-list-item, .product-card, div.search-result-row"
            ),
            "title": (
                ".msl-search-result-title a, .search-result-title a, h3 a, "
                "h2 a, a.title, .title, .product-title a"
            ),
            "link": (
                ".msl-search-result-title a, .search-result-title a, h3 a, "
                "h2 a, a.title, .product-title a, a"
            ),
            "price": ".msl-search-result-price, .price, .product-price, .item-price, span.price",
            "author": (
                ".msl-search-result-author, .author, .item-author, p.author, "
                ".msl-search-result-text"
            ),
        }
        territory = kwargs.pop("territory", "United Kingdom")
        price_currency = kwargs.pop("price_currency", "GBP")
        super().__init__(
            platform_name="LSE Student Union",
            base_url="https://www.lsesu.com",
            search_path="search?q={query}&page={page}",
            selectors=selectors,
            territory=territory,
            limit_pages=limit_pages,
            limit_items=limit_items,
            price_currency=price_currency,
            **kwargs
        )

if __name__ == "__main__":
    import argparse
    logging.basicConfig(level=logging.INFO)
    
    parser = argparse.ArgumentParser(description="LSE Student Union Playwright Spider")
    parser.add_argument("--query", type=str, default="Harry Potter")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=5)
    args, _ = parser.parse_known_args()

    spider = LseStudentUnionSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)

