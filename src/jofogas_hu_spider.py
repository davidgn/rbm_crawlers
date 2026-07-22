import re
from html_search_spider import HTMLSearchSpider

class JofogasHuSpider(HTMLSearchSpider):
    """Spider for Jofogas (Hungary). Hungary's largest general classifieds website."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Jofogas",
            base_url="https://www.jofogas.hu",
            search_path="magyarorszag?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Hungary",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="könyv")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = JofogasHuSpider(limit_pages=args.limit_pages)
    spider.run()
