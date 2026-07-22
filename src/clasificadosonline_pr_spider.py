import re
from html_search_spider import HTMLSearchSpider

class ClasificadosOnlinePrSpider(HTMLSearchSpider):
    """Native spider for ClasificadosOnline (Puerto Rico). The massive local peer-to-peer network."""
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="ClasificadosOnline_PR",
            base_url="https://www.clasificadosonline.com",
            search_path="Miscelaneas/MiscSearch.asp?ClasSearch={search_term}",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Puerto Rico",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="libros")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    spider = ClasificadosOnlinePrSpider(limit_pages=args.limit_pages)
    spider.run()
