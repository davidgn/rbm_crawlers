import argparse
from playwright_search_spider import PlaywrightSearchSpider

class PortalDosLivreirosSpider(PlaywrightSearchSpider):
    """
    Spider for Portal dos Livreiros (Brazil).
    Uses Playwright to bypass Cloudflare challenges.
    """
    def __init__(self, limit_pages: int = 5, limit_items: int | None = None, **kwargs):
        super().__init__(
            platform_name="Portal dos Livreiros",
            base_url="https://www.portaldoslivreiros.com.br",
            search_path="busca.asp?palavra={query}&page={page}",
            selectors={
                'container': 'tr, div.livro, .item-livro',
                'title': 'a[href*="livro.asp"], h3 a',
                'link': 'a[href*="livro.asp"]',
                'price': 'td:nth-last-child(1), .preco, .price',
            },
            territory="Brazil",
            price_currency="BRL",
            limit_pages=limit_pages,
            limit_items=limit_items,
            **kwargs
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Portal dos Livreiros Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = PortalDosLivreirosSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
