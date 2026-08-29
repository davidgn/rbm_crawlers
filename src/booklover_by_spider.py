import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class BookloverBySpider(BaseSpider):
    """
    Spider for booklover.by (Belarus), a Bitrix-based bookstore.
    M-Bag origin: Belarus ($5.80).
    """

    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="BookLover_BY",
            territory="Belarus"
        )
        self.limit_pages = limit_pages
        self.base_url = "https://booklover.by"
        self.price_currency = "BYN"
        
    def run(self):
        page = 1
        has_more = True
        while has_more and page <= self.limit_pages:
            url = f"{self.base_url}/catalog/khudozhestvennaya_literatura/?PAGEN_1={page}"
            try:
                response = requests.get(url, timeout=15)
                response.raise_for_status()
            except Exception as e:
                self.logger.error(f"Failed to fetch page {page}: {e}")
                break
                
            soup = BeautifulSoup(response.text, 'html.parser')
            cards = soup.select('.card')
            if not cards:
                break
                
            for card in cards:
                link_elem = card.select_one('a.card__link')
                if not link_elem:
                    continue
                    
                href = link_elem.get('href', '')
                prod_url = f"{self.base_url}{href}" if href.startswith('/') else href
                
                title_elem = card.select_one('.card__title')
                title = title_elem.get_text(strip=True) if title_elem else ""
                
                price_elem = card.select_one('.card__current-price')
                price_str = price_elem.get_text(strip=True) if price_elem else ""
                
                # e.g., "45.78 руб."
                price = price_str.replace("руб.", "").replace(" ", "").strip()
                if not price:
                    continue
                    
                # We don't have ISBN on the category page, set it to UNKNOWN
                # so the pipeline can still process the listing.
                isbn = "UNKNOWN"
                
                listing = BookListing(
                    platform=self.platform_name,
                    territory=self.territory,
                    listing_url=prod_url,
                    title=title,
                    price=price,
                    isbn=isbn,
                    currency=self.price_currency
                )
                self.save_item(listing)
                
            # Check if there's a next page link
            next_page = soup.select_one(f'a[href*="PAGEN_1={page+1}"]')
            if not next_page:
                has_more = False
                
            page += 1

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="BookLover BY spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = BookloverBySpider(limit_pages=args.limit_pages)
    spider.run()
