import argparse
from playwright_search_spider import PlaywrightSearchSpider

class ValueBooksJpSpider(PlaywrightSearchSpider):
    """
    Spider for ValueBooks Japan using Playwright to bypass anti-bot challenges.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        self.use_curl_cffi = False
        super().__init__(
            platform_name="ValueBooks Japan",
            base_url="https://www.valuebooks.jp",
            search_path="search?keyword={query}&page={page}",
            selectors={
                'container': 'a.item',
                'title': '.title',
                'link': '',
                'price': '.price',
                'author': '.author'
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
    args = parser.parse_args()
    
    spider = ValueBooksJpSpider(limit_pages=args.limit_pages)
    spider.run(search_term=args.query)
