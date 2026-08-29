import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing
import re

class MoscowBooksRuSpider(BaseSpider):
    """
    Spider for moscowbooks.ru (Russian Federation).
    M-Bag origin: Russian Federation ($13.42).
    """

    def __init__(self, limit_pages: int = 5):
        super().__init__(
            platform_name="MoscowBooks",
            territory="Russian Federation"
        )
        self.limit_pages = limit_pages
        self.base_url = "https://www.moscowbooks.ru"
        self.price_currency = "RUB"
        
    def run(self):
        page = 1
        has_more = True
        while has_more and page <= self.limit_pages:
            url = f"{self.base_url}/books/?page={page}"
            try:
                response = requests.get(url, timeout=15)
                response.raise_for_status()
            except Exception as e:
                self.logger.error(f"Failed to fetch page {page}: {e}")
                break
                
            soup = BeautifulSoup(response.text, 'html.parser')
            cards = soup.select('.book-preview')
            if not cards:
                break
                
            for card in cards:
                link_elem = card.select_one('.book-preview__title-link')
                if not link_elem:
                    continue
                    
                href = link_elem.get('href', '')
                prod_url = f"{self.base_url}{href}" if href.startswith('/') else href
                
                title = link_elem.get_text(strip=True)
                
                price_elem = card.select_one('.book-preview__price')
                price_str = price_elem.get_text(strip=True) if price_elem else ""
                
                # e.g., "690 ₽"
                price = re.sub(r'[^\d.]', '', price_str.replace(',', '.'))
                if not price:
                    continue
                    
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
            next_page = soup.select_one(f'a[href="/books/?page={page+1}"]')
            if not next_page:
                has_more = False
                
            page += 1

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="MoscowBooks RU spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    args = parser.parse_args()
    
    spider = MoscowBooksRuSpider(limit_pages=args.limit_pages)
    spider.run()
