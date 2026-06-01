import argparse
import time
import re
import httpx
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class DieselKgSpider(BaseSpider):
    def __init__(self, limit_pages=5):
        super().__init__(platform_name="Diesel Forum KG", territory="Kyrgyzstan")
        self.forum_url = "https://diesel.elcat.kg/index.php?showforum=74"
        self.limit_pages = limit_pages
        self.client = httpx.Client(timeout=30.0, follow_redirects=True, headers={
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
        })

    def run(self):
        self.logger.info(f"Starting Diesel Forum KG harvester. Limit: {self.limit_pages} pages.")
        
        for i in range(self.limit_pages):
            st = i * 20 # Forum typically uses st=20, 40, etc for offset
            url = f"{self.forum_url}&st={st}"
            self.logger.info(f"Fetching forum page: {url}")
            
            try:
                resp = self.client.get(url)
                resp.raise_for_status()
                soup = BeautifulSoup(resp.text, "html.parser")
                
                # Find all topic titles
                topic_links = soup.find_all("a", class_="topic_title")
                if not topic_links:
                    self.logger.warning("No topics found on page.")
                    break
                    
                for link in topic_links:
                    href = link.get("href")
                    if not href: continue
                    # Clean the URL (remove session ID)
                    clean_url = re.sub(r"&s=[a-z0-9]+", "", href)
                    if clean_url in self._seen_urls: continue
                    
                    self._scrape_topic(clean_url, link.text.strip())
                    time.sleep(2)
                    
            except Exception as e:
                self.logger.error(f"Failed to fetch {url}: {e}")
                break
                
        self.logger.info(f"Finished. Scraped {self.items_scraped} topics.")

    def _scrape_topic(self, url, title):
        try:
            resp = self.client.get(url)
            resp.raise_for_status()
            soup = BeautifulSoup(resp.text, "html.parser")
            
            # The first post is the main listing
            first_post = soup.find("div", class_="post_body")
            if not first_post: return
            
            content = first_post.text.strip()
            
            # Try to extract price
            price = None
            price_match = re.search(r"(\d+)\s*(сом|сом\.|kgs|som)", content, re.IGNORECASE)
            if price_match:
                price = f"{price_match.group(1)} KGS"
                
            # Author in forum is the poster, but we want the book author
            # We can use regex scavenging for common metadata patterns
            author = None
            author_match = re.search(r"Автор:\s*(.*)", content, re.IGNORECASE)
            if author_match:
                author = author_match.group(1).split("\n")[0].strip()

            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                author=author,
                price=price,
                listing_url=url,
                seller_comments=content[:1000] # Full post text
            )
            
            self.save_item(item)
            
        except Exception as e:
            self.logger.error(f"Error scraping topic {url}: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=1)
    args = parser.parse_args()
    spider = DieselKgSpider(limit_pages=args.limit)
    spider.run()
