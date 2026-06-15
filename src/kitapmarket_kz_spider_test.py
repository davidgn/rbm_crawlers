import argparse
import time
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class KitapmarketKzSpider(BaseSpider):
    def __init__(self, limit_pages=10):
        super().__init__(platform_name="Kitapmarket.kz", territory="Kazakhstan")
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info("Starting Kitapmarket.kz Enhanced Crawler.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            detail_page = context.new_page()
            Stealth().apply_stealth_sync(detail_page)
            
            try:
                # Browse Catalog
                url = "https://kitapmarket.kz/Catalog"
                self.logger.info("Loading Kitapmarket.kz Catalog...")
                page.goto(url, timeout=60000, wait_until="domcontentloaded")
                page.wait_for_timeout(5000)
                
                for current_page in range(1, self.limit_pages + 1):
                    self.logger.info(f"Scraping Catalog page {current_page}...")
                    
                    # Find book links
                    all_links = page.query_selector_all('a[href^="/BookDetails?id="]')
                    links = [l.get_attribute("href") for l in all_links]
                    links = list(dict.fromkeys(links)) # Unique
                    
                    self.logger.info(f"Found {len(links)} unique book links.")
                    
                    if not links:
                        break
                        
                    for link in links[:5]:
                        abs_url = "https://kitapmarket.kz" + link
                        if abs_url in self._seen_urls:
                            continue
                        
                        try:
                            self._scrape_detail(detail_page, abs_url)
                            time.sleep(1)
                        except Exception as e:
                            self.logger.error(f"Error scraping detail {abs_url}: {e}")
                    
                    # Pagination
                    next_btn = page.query_selector('button:has(svg.lucide-chevron-right)')
                    if next_btn and next_btn.is_enabled():
                        next_btn.click()
                        page.wait_for_timeout(5000)
                    else:
                        page.evaluate("window.scrollBy(0, document.body.scrollHeight)")
                        page.wait_for_timeout(3000)
                        new_links = page.query_selector_all('a[href^="/BookDetails?id="]')
                        if len(new_links) <= len(all_links):
                            self.logger.info("No more items found.")
                            break
                            
            except Exception as e:
                self.logger.error(f"Crawl failed: {e}")
            finally:
                browser.close()

    def _scrape_detail(self, page, url):
        page.goto(url, timeout=30000, wait_until="domcontentloaded")
        page.wait_for_timeout(2000)
        
        title = ""
        author = ""
        price = ""
        try:
            h1 = page.query_selector("h1")
            if h1: title = h1.inner_text().strip()
            
            p_author = page.query_selector("h1 + p")
            if p_author: author = p_author.inner_text().strip()
            
            price_elem = page.query_selector("span:has-text('₸')")
            if price_elem: price = price_elem.inner_text().strip()
        except: pass

        details = {}
        try:
            chars = page.query_selector_all("div.grid > div")
            for char in chars:
                label_elem = char.query_selector("div.text-slate-500")
                value_elem = char.query_selector("div.font-medium")
                if label_elem and value_elem:
                    label = label_elem.inner_text().strip().lower()
                    value = value_elem.inner_text().strip()
                    details[label] = value
        except: pass

        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title or "Unknown",
            author=author or details.get("muallif") or details.get("автор"),
            isbn=details.get("isbn"),
            publisher=details.get("nashriyot") or details.get("издательство"),
            publication_year=details.get("год издания") or details.get("year"),
            pages=details.get("страниц") or details.get("pages"),
            language=details.get("язык") or details.get("language"),
            binding=details.get("format") or details.get("переплет"),
            category=details.get("категория") or details.get("genre"),
            condition=details.get("состояние") or details.get("status"),
            price=price,
            listing_url=url
        )
        
        try:
            desc_elem = page.query_selector("p.text-slate-700")
            if desc_elem: item.seller_comments = desc_elem.inner_text().strip()
        except: pass
        
        self.save_item(item)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=1)
    args = parser.parse_args()
    spider = KitapmarketKzSpider(limit_pages=args.limit)
    spider.run()
