import argparse
from playwright_search_spider import PlaywrightSearchSpider

class ValueBooksJpSpider(PlaywrightSearchSpider):
    """
    Spider for ValueBooks Japan using Playwright to bypass anti-bot challenges.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="ValueBooks Japan",
            base_url="https://www.valuebooks.jp",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': '.product-card, .item-card, .search-result-item, div.item, .item-box, article',
                'title': '.product-title, .item-name, a.title, h3 a, h2 a',
                'link': 'a[href*="/item/"], a[href*="/products/"], a[href*="/bp/"], a.title',
                'price': '.price, .item-price, .yen, span.price',
                'author': '.author, .publisher-name, .writer'
            },
            territory="Japan",
            price_currency="JPY",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="ValueBooks Japan Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = ValueBooksJpSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
