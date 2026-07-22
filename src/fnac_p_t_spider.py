import argparse
from playwright_search_spider import PlaywrightSearchSpider

class FnacPTSpider(PlaywrightSearchSpider):
    """
    Spider for FNAC Portugal using Playwright to bypass Cloudflare.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="FNAC Portugal Marketplace",
            base_url="https://www.fnac.pt",
            search_path="SearchResult/ResultList.aspx?Search={query}&page={page}",
            selectors={
                'container': '.Article-item, .product-item, div.product, div.card, .article-list li',
                'title': '.Article-title, a.title, h3 a, h2 a, .card-title',
                'link': 'a[href*="/ia"], a[href*="/livros/"], a.title',
                'price': '.price, .userPrice, .prix, span.price',
                'author': '.Article-author, .author'
            },
            territory="Portugal",
            price_currency="EUR",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="FNAC Portugal Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = FnacPTSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
