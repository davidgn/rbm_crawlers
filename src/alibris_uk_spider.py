import argparse
from playwright_search_spider import PlaywrightSearchSpider

class AlibrisUkSpider(PlaywrightSearchSpider):
    """
    Spider for Alibris UK using Playwright to bypass Cloudflare.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Alibris UK",
            base_url="https://www.alibris.co.uk",
            search_path="booksearch?keyword={query}&mtype=B&page={page}",
            selectors={
                'container': '#works-list > li, li.work-item, .product-listing, table.grid tr',
                'title': 'h2 a, .title a, a.title, td.title a, h3 a',
                'link': 'h2 a, .title a, a.title, td.title a, h3 a',
                'price': '.price, .price-main, td.price, span.price',
                'author': '.author a, .byline, td.author'
            },
            territory="United Kingdom",
            price_currency="GBP",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Alibris UK Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = AlibrisUkSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)

