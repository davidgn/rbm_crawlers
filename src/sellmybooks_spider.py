import argparse
import httpx
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class SellMyBooksSpider(BaseSpider):
    """SellMyBooks India crawler using UsedBookr.com web catalog.
    
    UsedBookr is the consumer-facing platform for SimplySellBooks.in.
    """
    
    def __init__(self, limit_pages=5):
        super().__init__(platform_name="SellMyBooks", territory="India")
        self.base_url = "https://www.usedbookr.com"
        self.categories_url = f"{self.base_url}/buy-second-hand-books-usedbooks/categories/all-fiction-books"
        self.limit_pages = limit_pages
        self.client = httpx.Client(
            timeout=30.0, 
            follow_redirects=True,
            headers={
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
            }
        )

    def run(self):
        self.logger.info(f"Starting SellMyBooks (UsedBookr) crawler. Limit: {self.limit_pages} pages.")
        
        # UsedBookr seems to use pagination like ?page=N
        for page in range(1, self.limit_pages + 1):
            url = f"{self.categories_url}?page={page}"
            try:
                response = self.client.get(url)
                if response.status_code != 200:
                    self.logger.warning(f"Failed to fetch {url}, status: {response.status_code}")
                    break
                
                if not self._parse_page(response.text):
                    self.logger.info("No more items found or parse error.")
                    break
                    
            except Exception as e:
                self.logger.error(f"Error fetching {url}: {e}")
                break

        self.logger.info(f"Finished SellMyBooks. Scraped {self.items_scraped} items.")

    def _parse_page(self, html):
        soup = BeautifulSoup(html, "html.parser")
        products = soup.find_all("div", class_="product-card")
        
        if not products:
            return False
            
        for product in products:
            try:
                title_tag = product.find("h4", class_="card-title")
                if not title_tag:
                    continue
                
                link_tag = title_tag.find("a")
                if not link_tag:
                    continue
                
                title = link_tag.get_text(strip=True)
                listing_url = link_tag.get("href")
                
                author_p = product.find("p", class_="autor-name")
                author = author_p.get_text(strip=True).replace("By ", "").strip() if author_p else None
                
                price_p = product.find("p", class_="card-text")
                price = None
                if price_p:
                    # Extract the bold part which is the current price
                    bold_price = price_p.find("b")
                    if bold_price:
                        price = f"INR {bold_price.get_text(strip=True)}"
                
                self.save_item(BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    author=author,
                    price=price,
                    listing_url=listing_url,
                    category="Fiction" # Based on the URL we are crawling
                ))
            except Exception as e:
                self.logger.error(f"Error parsing item: {e}")
                continue
                
        return True

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="SellMyBooks India (UsedBookr) crawler")
    parser.add_argument("--limit", type=int, default=5, help="Max pages to fetch")
    args = parser.parse_args()
    spider = SellMyBooksSpider(limit_pages=args.limit)
    spider.run()
