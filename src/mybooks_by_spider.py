import requests
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class MyBooksBySpider(BaseSpider):
    """
    Custom HTML crawler for mybooks.by (Belarus).
    Prices in BYN.
    """
    def __init__(self, limit_pages: int = 5):
        super().__init__(platform_name="MyBooks", territory="Belarus")
        self.limit_pages = limit_pages
        self.base_url = "https://mybooks.by"
        self.categories = [
            "/Biznes-knigi/",
            "/psihologiya-2/"
        ]

    def _get_with_retries(self, url, max_retries=3):
        import time
        for i in range(max_retries):
            try:
                resp = requests.get(url, timeout=10)
                if resp.status_code == 200:
                    return resp
            except Exception as e:
                self.logger.warning(f"Error fetching {url}: {e}")
            time.sleep(2)
        return None

    def run(self):
        for category in self.categories:
            for page in range(1, self.limit_pages + 1):
                url = f"{self.base_url}{category}?page={page}"
                try:
                    response = self._get_with_retries(url)
                    if not response:
                        continue
                    soup = BeautifulSoup(response.text, 'html.parser')
                    
                    products = soup.select('meta[data-ec-product]')
                    if not products:
                        break  # no more products on this category page
                    
                    for prod in products:
                        title = prod.get('data-name', '').strip()
                        price_str = prod.get('data-price', '').strip()
                        currency = prod.get('data-currency', 'BYN').strip()
                        url_path = prod.parent.find('a', href=True) if prod.parent else None
                        
                        # Just grab some generic URL if we can't find it inside the parent
                        link = url
                        if url_path:
                            link = f"{self.base_url}{url_path['href']}"
                            
                        # Usually ISBN is not explicitly given, or it's in data-code
                        isbn = prod.get('data-code', '').strip()
                        if not isbn:
                            isbn = "UNKNOWN"
                            
                        listing = BookListing(
                            title=title,
                            price=price_str,
                            price_currency=currency,
                            listing_url=link,
                            seller_name="MyBooks",
                            platform=self.platform_name,
                            territory=self.territory,
                            condition="New",
                            isbn=isbn
                        )
                        self.save_item(listing)
                except Exception as e:
                    self.logger.error(f"Error crawling {url}: {e}")
