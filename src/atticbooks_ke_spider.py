import argparse
import time
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class AtticBooksKeSpider(BaseSpider):
    def __init__(self, limit_pages=5):
        super().__init__(platform_name="Attic Books", territory="Kenya")
        self.base_url = "https://atticbooks.co.ke"
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(f"Starting Attic Books harvester. Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Browse books category
                for page_num in range(1, self.limit_pages + 1):
                    url = f"{self.base_url}/books?page={page_num}"
                    self.logger.info(f"Fetching page {page_num}: {url}")
                    
                    page.goto(url, timeout=60000, wait_until="domcontentloaded")
                    page.wait_for_timeout(3000)
                    
                    # Scroll to load
                    page.evaluate("window.scrollBy(0, document.body.scrollHeight)")
                    page.wait_for_timeout(2000)
                    
                    # Find links
                    product_links = page.query_selector_all('a.card-img-top')
                    links = [l.get_attribute("href") for l in product_links if l.get_attribute("href")]
                    
                    if not links:
                        product_links = page.query_selector_all('.product-card a')
                        links = [l.get_attribute("href") for l in product_links if l.get_attribute("href") and '/books/' in l.get_attribute("href")]
                        
                    links = list(dict.fromkeys(links))
                    self.logger.info(f"Found {len(links)} links on page {page_num}")
                    
                    if not links:
                        self.logger.info("No more links found.")
                        break
                        
                    for link in links:
                        abs_url = link if link.startswith("http") else f"https:{link}" if link.startswith("//") else f"{self.base_url}{link}"
                        if abs_url in self._seen_urls: continue
                        
                        detail_page = context.new_page()
                        Stealth().apply_stealth_sync(detail_page)
                        try:
                            self._scrape_detail(detail_page, abs_url)
                            time.sleep(1)
                        except Exception as e:
                            self.logger.error(f"Error scraping detail {abs_url}: {e}")
                        finally:
                            detail_page.close()
                            
            except Exception as e:
                self.logger.error(f"Crawl failed: {e}")
            finally:
                browser.close()
                
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _scrape_detail(self, page, url):
        page.goto(url, timeout=30000, wait_until="domcontentloaded")
        page.wait_for_timeout(2000)
        
        price = None
        price_amount = page.evaluate("document.querySelector('meta[property=\"product:price:amount\"]')?.content")
        price_currency = page.evaluate("document.querySelector('meta[property=\"product:price:currency\"]')?.content")
        if price_amount and price_currency:
            price = f"{price_currency} {price_amount}"
            
        if not price:
            price_elem = page.query_selector("span.text-accent")
            if price_elem: price = price_elem.inner_text().strip()
            
        title = ""
        try:
            h1 = page.query_selector("h1")
            if h1: title = h1.inner_text().strip()
        except: pass
        
        author = None
        try:
            author_elem = page.query_selector("span[itemprop='author'] span[itemprop='name']")
            if author_elem: author = author_elem.inner_text().strip()
        except: pass
        
        isbn = None
        try:
            isbn_elem = page.query_selector("span[itemprop='isbn']")
            if isbn_elem: isbn = isbn_elem.inner_text().strip()
        except: pass
        
        condition = "Used"
        try:
            cond_elem = page.query_selector("span.detailedcondik span.titletext")
            if cond_elem: condition = cond_elem.inner_text().strip()
        except: pass
        
        comments = None
        try:
            comm_elem = page.query_selector("span.detailedcondik span.text-muted")
            if comm_elem: comments = comm_elem.inner_text().strip()
        except: pass

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title or "Unknown",
            author=author,
            isbn=isbn,
            condition=condition,
            price=price,
            seller_comments=comments,
            listing_url=url
        )
        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=1)
    args = parser.parse_args()
    spider = AtticBooksKeSpider(limit_pages=args.limit)
    spider.run()
