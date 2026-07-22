import re
from html_search_spider import HTMLSearchSpider


class JumiaRwSpider(HTMLSearchSpider):
    """Spider for Jumia Deals Rwanda (previously Vendito). Africa's leading online marketplace
    active in Rwanda, covering books, electronics, fashion and general merchandise C2C listings."""

    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Jumia_RW", base_url="https://www.jumia.rw",
            search_path="catalog/?q={search_term}",
            selectors={'container': 'article.prd', 'title': 'h3.name', 'price': 'div.prc'},
            territory="Rwanda", limit_pages=limit_pages
        )


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()

    spider = JumiaRwSpider(limit_pages=args.limit_pages)
    spider.run()
