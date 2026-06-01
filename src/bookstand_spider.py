import argparse
import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BookStandSpider(BaseSpider):
    def __init__(self, limit_pages=100):
        super().__init__(platform_name="BookStand", territory="India")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(f"Starting BookStand Enhanced Crawler.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                self.logger.info("Loading BookStand marketplace...")
                page.goto("https://www.bookstand.app/bookstand", timeout=60000, wait_until="domcontentloaded")
                page.wait_for_timeout(5000)
                
                for current_page in range(1, self.limit_pages + 1):
                    self.logger.info(f"Scraping page {current_page}...")
                    
                    page.wait_for_timeout(2000)
                    
                    # Find all links starting with /bookstand/ but skip navigation tabs
                    all_links = page.query_selector_all('a[href^="/bookstand/"]')
                    cards = [a for a in all_links if len(a.get_attribute("href").split("/")[-1]) > 10]
                    self.logger.info(f"Found {len(cards)} book cards on this page.")
                        
                    if not cards:
                        self.logger.warning("No book cards found. Stopping.")
                        break
                        
                    links = [c.get_attribute("href") for c in cards]
                    
                    for link in links:
                        if not link: continue
                        abs_url = "https://www.bookstand.app" + link if link.startswith("/") else link
                        if abs_url in self._seen_urls:
                            continue
                        
                        detail_page = context.new_page()
                        Stealth().apply_stealth_sync(detail_page)
                        try:
                            self._scrape_detail(detail_page, abs_url)
                            time.sleep(2) # Throttle
                        except Exception as e:
                            self.logger.error(f"Error scraping detail {abs_url}: {e}")
                        finally:
                            detail_page.close()

                    # Scroll for lazy load
                    page.evaluate("window.scrollBy(0, document.body.scrollHeight)")
                    page.wait_for_timeout(2000)
                    
                    next_btn = page.query_selector("button:has-text('Load More')")
                    if next_btn and next_btn.is_visible():
                        next_btn.click()
                    else:
                        break
                        
            except Exception as e:
                self.logger.error(f"Crawl failed: {e}")
            finally:
                browser.close()
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _scrape_detail(self, page, url):
        page.goto(url, timeout=30000, wait_until="domcontentloaded")
        page.wait_for_timeout(2000)
        
        title = ""
        try:
            title_elem = page.query_selector("h1")
            if title_elem: title = title_elem.inner_text().strip()
        except: pass

        # Enhanced metadata extraction from description list (dl/dt/dd)
        details = {}
        try:
            # Get all dt/dd pairs
            dts = page.query_selector_all("dt")
            dds = page.query_selector_all("dd")
            for dt, dd in zip(dts, dds):
                key = dt.inner_text().strip().lower()
                val = dd.inner_text().strip()
                details[key] = val
        except Exception as e:
            self.logger.warning(f"DL extraction failed: {e}")

        # Fallback to general text parsing if details is empty
        if not details:
            try:
                text = page.inner_text("body")
                lines = text.split("\n")
                if "DETAILS" in lines:
                    idx = lines.index("DETAILS")
                    for i in range(idx+1, len(lines), 2):
                        if i+1 < len(lines):
                            details[lines[i].strip().lower()] = lines[i+1].strip()
                        if i > idx + 15: break
            except: pass

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=details.get("author") or details.get("by"),
            isbn=details.get("isbn"),
            publisher=details.get("publisher"),
            pages=details.get("pages"),
            category=details.get("genre") or details.get("category"),
            binding=details.get("format") or details.get("binding"),
            condition=details.get("condition"),
            listing_url=url
        )
        
        # Price extraction
        try:
            price_elem = page.query_selector(".text-3xl.font-bold")
            if price_elem:
                item.price = price_elem.inner_text().strip()
        except: pass

        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=10)
    args = parser.parse_args()
    spider = BookStandSpider(limit_pages=args.limit)
    spider.run()
