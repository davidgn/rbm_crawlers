import argparse
import httpx
from bs4 import BeautifulSoup
from base_spider import BaseSpider
from models import BookListing

class PustakMarketSpider(BaseSpider):
    def __init__(self, limit_pages=5):
        super().__init__(platform_name="PustakMarket", territory="India")
        self.base_url = "https://pustakmarket.com"
        self.catalog_url = f"{self.base_url}/book/e-book/all"
        self.limit_pages = limit_pages
        self.client = httpx.Client(
            timeout=30.0, 
            follow_redirects=True,
            headers={
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
            }
        )

    def run(self):
        self.logger.info(f"Starting PustakMarket crawler. Limit: {self.limit_pages} pages.")
        
        # PustakMarket seems to use simple pagination or infinite scroll.
        # For now we'll start with the main all-books page.
        # Note: If they use standard page params, we could add ?page=N
        for page in range(1, self.limit_pages + 1):
            url = f"{self.catalog_url}/{page}" if page > 1 else self.catalog_url
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

        self.logger.info(f"Finished PustakMarket. Scraped {self.items_scraped} items.")

    def _parse_page(self, html):
        soup = BeautifulSoup(html, "html.parser")
        products = soup.find_all("div", class_="mirora-product")
        
        if not products:
            return False
            
        for product in products:
            try:
                content = product.find("div", class_="product-content")
                if not content:
                    continue
                    
                author_span = content.find("span")
                author = author_span.get_text(strip=True).replace("Author :", "").strip() if author_span else None
                
                link_tag = content.find("h4").find("a") if content.find("h4") else None
                if not link_tag:
                    continue
                    
                title = link_tag.get_text(strip=True)
                listing_url = link_tag.get("href")
                
                price_wrapper = content.find("div", class_="product-price-wrapper")
                price = price_wrapper.find("span", class_="money").get_text(strip=True) if price_wrapper else None
                
                self.save_item(BookListing(
                    territory=self.territory,
                    platform=self.platform_name,
                    title=title,
                    author=author,
                    price=price,
                    listing_url=listing_url,
                    category="E-Book"
                ))
            except Exception as e:
                self.logger.error(f"Error parsing item: {e}")
                continue
                
        return True

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="PustakMarket India crawler")
    parser.add_argument("--limit", type=int, default=5, help="Max pages to fetch")
    args = parser.parse_args()
    spider = PustakMarketSpider(limit_pages=args.limit)
    spider.run()
