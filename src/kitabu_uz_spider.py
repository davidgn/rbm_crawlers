import argparse
import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class KitabuUzSpider(BaseSpider):
    def __init__(self, limit_pages=10):
        super().__init__(platform_name="Kitabu.uz", territory="Uzbekistan")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info("Starting Kitabu.uz Enhanced Crawler.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Browse SELL and EXCHANGE types
                for exchange_type in ["SELL", "EXCHANGE"]:
                    url = f"https://kitabu.uz/library?formExchangeType={exchange_type}"
                    self.logger.info(f"Loading Kitabu.uz {exchange_type} page...")
                    page.goto(url, timeout=60000, wait_until="domcontentloaded")
                    page.wait_for_timeout(5000)
                    
                    for current_page in range(1, self.limit_pages + 1):
                        self.logger.info(f"Scraping {exchange_type} page {current_page}...")
                        
                        # Find book links
                        all_links = page.query_selector_all('a[href^="/posts/"]')
                        links = []
                        for l in all_links:
                            href = l.get_attribute("href")
                            if href and len(href.split("/")[-1]) > 30: # UUID check
                                links.append(href)
                        
                        links = list(dict.fromkeys(links)) # Unique
                        self.logger.info(f"Found {len(links)} unique book links.")
                        
                        if not links:
                            break
                            
                        for link in links:
                            abs_url = "https://kitabu.uz" + link
                            if abs_url in self._seen_urls:
                                continue
                            
                            detail_page = context.new_page()
                            Stealth().apply_stealth_sync(detail_page)
                            try:
                                self._scrape_detail(detail_page, abs_url)
                                time.sleep(1)
                            except Exception as e:
                                self.logger.error(f"Error scraping detail {abs_url}: {e}")
                            finally:
                                detail_page.close()
                        
                        # Pagination - Kitabu uses 'Load More' or automatic scroll?
                        # Based on my dump, it seems to be a grid.
                        # Let's try scrolling
                        page.evaluate("window.scrollBy(0, document.body.scrollHeight)")
                        page.wait_for_timeout(3000)
                        
                        # Check if more links appeared
                        new_links = page.query_selector_all('a[href^="/posts/"]')
                        if len(new_links) <= len(all_links):
                            self.logger.info("No more items loaded via scroll.")
                            break
                            
            except Exception as e:
                self.logger.error(f"Crawl failed: {e}")
            finally:
                browser.close()

    def _scrape_detail(self, page, url):
        page.goto(url, timeout=30000, wait_until="domcontentloaded")
        page.wait_for_timeout(3000) # Give time for data to load
        
        title = ""
        try:
            title_elem = page.query_selector("h1")
            if title_elem: title = title_elem.inner_text().strip()
        except: pass

        details = {}
        try:
            # Kitabu uses <p> Label: <span> Value </span></p>
            paragraphs = page.query_selector_all("p")
            for p in paragraphs:
                text = p.inner_text()
                if ":" in text:
                    label, value = text.split(":", 1)
                    details[label.strip().lower()] = value.strip()
        except: pass

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=details.get("author") or details.get("muallif"),
            category=details.get("category") or details.get("turkum"),
            condition=details.get("status") or details.get("holati"),
            price=details.get("price") or details.get("narxi"),
            listing_url=url
        )
        
        # Try to find Genre/Nashriyot
        item.publisher = details.get("nashriyot") or details.get("publisher")
        
        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=1)
    args = parser.parse_args()
    spider = KitabuUzSpider(limit_pages=args.limit)
    spider.run()
