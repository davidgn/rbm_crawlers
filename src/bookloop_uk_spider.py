import argparse
from playwright_search_spider import PlaywrightSearchSpider

class BookloopUkSpider(PlaywrightSearchSpider):
    """
    Spider for Bookloop UK using Playwright to bypass Cloudflare.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Bookloop UK",
            base_url="https://bookloop.webuybooks.co.uk",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': '.product-card, .item-card, .book-card, .product-item, div.grid-item',
                'title': '.product-title, .title a, h3 a, h2 a',
                'link': 'a[href*="/books/"], a[href*="/products/"], a.title',
                'price': '.price, .product-price, span.money',
                'author': '.author, .product-author'
            },
            territory="United Kingdom",
            price_currency="GBP",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Bookloop UK Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = BookloopUkSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)

