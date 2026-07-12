import argparse
from playwright_search_spider import PlaywrightSearchSpider

class RecyclivreSpider(PlaywrightSearchSpider):
    """
    Spider for Recyclivre (France) using Playwright to bypass Cloudflare.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Recyclivre",
            base_url="https://www.recyclivre.com",
            search_path="shop?q={query}&page={page}",
            selectors={
                'container': '.product-card, .product-item, div.product, div.card, article',
                'title': '.product-card__title, .product-item__title, a.title, h3 a, h2 a, .card-title',
                'link': 'a[href*="/products/"], a[href*="/product/"], a[href*="/shop/"]',
                'price': '.price, .product-price, span.money, .prix',
                'author': '.product-card__author, .author'
            },
            territory="France",
            price_currency="EUR",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Recyclivre Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = RecyclivreSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
