import argparse
from playwright_search_spider import PlaywrightSearchSpider

class BiblioIeSpider(PlaywrightSearchSpider):
    """
    Spider for Biblio Ireland using Playwright to bypass Cloudflare.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Biblio.ie",
            base_url="https://biblio.ie",
            search_path="search.php?key={query}&page={page}",
            selectors={
                'container': '.search-result, .item-card, .book-item, .result-item, div.search-result-row',
                'title': 'h2 a, h3 a, a.title, .title a',
                'link': 'h2 a, h3 a, a.title, .title a',
                'price': '.price, .item-price, span.price',
                'author': '.author, .item-author, p.author'
            },
            territory="Ireland",
            price_currency="EUR",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Biblio Ireland Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = BiblioIeSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
