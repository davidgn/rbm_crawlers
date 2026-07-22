import re
from html_search_spider import HTMLSearchSpider

class LirekaSpider(HTMLSearchSpider):
    """
    Spider for Lireka (Primary international French bookseller to DR Congo & Africa).
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Lireka",
            base_url="https://www.lireka.com",
            search_path="fr/search?q={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="DR Congo", # Mapped to DRC as primary usage due to lack of local infra
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="livres")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = LirekaSpider(limit_pages=args.limit_pages)
    spider.run()
