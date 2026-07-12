import argparse
from playwright_search_spider import PlaywrightSearchSpider

class AwesomebooksSpider(PlaywrightSearchSpider):
    """
    Spider for AwesomeBooks using Playwright to bypass Cloudflare.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="AwesomeBooks",
            base_url="https://www.awesomebooks.com",
            search_path="search?q={query}&page={page}",
            selectors={
                'container': '.product-card, .product-item, div.product, div[data-product-id], .grid-item',
                'title': '.product-card__title, .product-item__title, a.title, h3, h2',
                'link': 'a[href*="/products/"], a[href*="/product/"], a.product-card__link',
                'price': '.price, .product-price, .price-item, span.money',
                'author': '.product-card__author, .author'
            },
            territory="United Kingdom",
            price_currency="GBP",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="AwesomeBooks Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = AwesomebooksSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)

