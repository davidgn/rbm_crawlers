import re
from html_search_spider import HTMLSearchSpider
from models import BookListing

class LibrairieCaritasRwSpider(HTMLSearchSpider):
    """
    Broad crawler for Librairie Caritas (Rwanda) using HTML list scraping.
    Prices are in Rwandan Francs (RWF).
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="Librairie Caritas",
            base_url="https://librairiecaritas.com",
            search_path="Books?page={page}",
            selectors={
                "container": "div.product-item",
                "title": "h5.product-name",
                "price": "div.product-header h3"
            },
            territory="Rwanda",
            price_currency="RWF",
            limit_pages=limit_pages
        )

    def _parse_item(self, item_element):
        title = None
        price_val = None
        
        title_el = item_element.select_one(self.selectors['title'])
        if title_el:
            title = title_el.text.strip()
            
        if not title or len(title) < 3:
            return

        price_el = item_element.select_one(self.selectors['price'])
        if price_el:
            match = re.search(r"[\d,]+", price_el.text.strip())
            if match:
                price_val = match.group(0).replace(",", "")

        # Since detail pages do not exist (loaded via modal), use base_url as listing_url
        listing_url = self.base_url

        book = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=None,
            price=price_val,
            price_currency=self.price_currency,
            listing_url=listing_url
        )
        self.save_item(book)

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit-pages", type=int, default=5)
    args = parser.parse_args()

    LibrairieCaritasRwSpider(limit_pages=args.limit_pages).run()
