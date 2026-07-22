import re
from html_search_spider import HTMLSearchSpider

class BarcodeBookshopSdSpider(HTMLSearchSpider):
    """
    Spider for Barcode Bookshop (Sudan).
    A prominent domestic physical and online retailer based in Khartoum.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BarcodeBookshop",
            base_url="https://barcodebookshop.com",
            search_path="?s={search_term}&post_type=product",
            selectors={'container': 'div', 'title': 'h2', 'price': '.price'}, territory="Sudan",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--query", type=str, default="books")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = BarcodeBookshopSdSpider(limit_pages=args.limit_pages)
    spider.run()
