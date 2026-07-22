# Compatibility shim — the full implementation lives in agapea_es_spider.py
from agapea_es_spider import AgapeaESSpider  # noqa: F401

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Agapea (agapea.com, Spain) book spider")
    parser.add_argument("--query", type=str, default="")
    parser.add_argument("--limit-pages", type=int, default=20)
    parser.add_argument("--limit-items", type=int, default=None)
    parser.add_argument("--browse", action="store_true")
    args = parser.parse_args()

    spider = AgapeaESSpider(
        search_term=args.query,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
        browse=args.browse,
    )
    spider.run()
    print(f"Done. {spider.items_scraped} items scraped.")
