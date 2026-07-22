from fnac_p_t_spider import FnacPTSpider
import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="FNAC Portugal Playwright Spider")
    parser.add_argument("--query", type=str, default="Potter")
    parser.add_argument("--limit-pages", type=int, default=2)
    parser.add_argument("--limit-items", type=int, default=10)
    args = parser.parse_args()

    spider = FnacPTSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run(search_term=args.query)
