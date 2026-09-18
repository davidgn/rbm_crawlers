import argparse
from flaresolverr_search_spider import FlaresolverrSearchSpider

class BiblioUkSpider(FlaresolverrSearchSpider):
    """
    Spider for Biblio UK using Flaresolverr to bypass Cloudflare.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Biblio UK",
            base_url="https://biblio.co.uk",
            search_path="search.php?stage=1&result_type=works&keyisbn={query}&page={page}",
            selectors={
                'container': '#search_results_list .item.smarty',
                'title': 'header.item-title h2.title a',
                'link': 'header.item-title h2.title a',
                'price': '.item-price',
                'author': 'header.item-title h3.author'
            },
            territory="United Kingdom",
            price_currency="GBP",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Biblio UK Flaresolverr Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = BiblioUkSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)

