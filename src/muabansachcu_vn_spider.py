import re
from html_search_spider import HTMLSearchSpider

class MuabansachcuVnSpider(HTMLSearchSpider):
    """Spider for MuaBanSachCu (Vietnam). A dedicated platform for buying and selling second-hand books."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Muabansachcu",
            base_url="https://muabansachcu.vn",
            search_path="tim-kiem?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Vietnam",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="sách")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = MuabansachcuVnSpider(limit_pages=args.limit_pages)
    spider.run()
