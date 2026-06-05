import argparse
import time
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class TikiVnSpider(BaseSpider):
    def __init__(self, limit_pages=5):
        super().__init__(platform_name="Tiki.vn", territory="Vietnam")
        self.limit_pages = limit_pages
        self.base_url = "https://tiki.vn"

    def run(self):
        self.logger.info(f"Starting Tiki.vn Enhanced Crawler.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Search for used books (sách cũ)
                search_url = f"{self.base_url}/search?q=sach+cu"
                self.logger.info(f"Loading Tiki search page: {search_url}")
                page.goto(search_url, wait_until="networkidle", timeout=60000)
                
                urls = []
                for current_page in range(self.limit_pages):
                    self.logger.info(f"Collecting links from page {current_page + 1}...")
                    
                    # Scroll a bit
                    for _ in range(3):
                        page.evaluate("window.scrollBy(0, 1000)")
                        page.wait_for_timeout(1000)
                    
                    # Tiki product links usually have 'tiki.vn/' and end with .html or have product ID
                    links = page.query_selector_all("a[data-view-id='product_list_item']")
                    if not links:
                        links = page.query_selector_all("a.product-item")
                        
                    for link in links:
                        href = link.get_attribute("href")
                        if href:
                            if href.startswith("/"):
                                href = self.base_url + href
                            if href not in urls and href not in self._seen_urls:
                                urls.append(href)
                    
                    self.logger.info(f"Total unique URLs: {len(urls)}")
                    
                    # Next page
                    next_btn = page.query_selector("a.next, .pagination-item.next a")
                    if next_btn:
                        next_btn.click()
                        page.wait_for_timeout(3000)
                    else:
                        break

                self.logger.info(f"Deep crawling {len(urls)} listings.")
                for url in urls:
                    self._harvest_listing(url, context)
            except Exception as e:
                self.logger.error(f"Crawl error: {e}")
            finally:
                browser.close()
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _harvest_listing(self, url, context):
        detail_page = context.new_page()
        try:
            detail_page.goto(url, wait_until="domcontentloaded", timeout=45000)
            detail_page.wait_for_timeout(2000)
            html = detail_page.content()
            
            # Extract info
            title_elem = detail_page.query_selector("h1.title, .product-title")
            title = title_elem.inner_text().strip() if title_elem else "Unknown Title"
            
            price_elem = detail_page.query_selector(".product-price__current-price, .price")
            price = price_elem.inner_text().strip() if price_elem else None
            
            desc_elem = detail_page.query_selector(".product-description, .ToggleContent__Content-sc-166p5p6-0")
            desc = desc_elem.inner_text().strip() if desc_elem else ""

            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                price=price,
                listing_url=url,
                seller_comments=desc
            )
            
            # Scavenge metadata
            item = self.scavenge_metadata(html, item)
            if desc:
                item = self.scavenge_metadata(desc, item)

            self.save_item(item)
            self.cache_html(url.split("/")[-1].split(".")[0], html, url=url)
            
        except Exception as e:
            self.logger.error(f"Error detail page {url}: {e}")
        finally:
            detail_page.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=2)
    args = parser.parse_args()
    spider = TikiVnSpider(limit_pages=args.limit)
    spider.run()
