import re
from html_search_spider import HTMLSearchSpider

class SomonTjSpider(HTMLSearchSpider):
    """Spider for Somon.tj (Tajikistan). The primary classifieds marketplace in Tajikistan."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Somon_Tj",
            base_url="https://somon.tj",
            search_path="advs?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Tajikistan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="Книги")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = SomonTjSpider(limit_pages=args.limit_pages)
    spider.run()
