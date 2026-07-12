from portaldoslivreiros_spider import PortalDosLivreirosSpider, main if 'main' in globals() else None
import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Portal dos Livreiros Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = PortalDosLivreirosSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
