import argparse
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class BookStandSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="BookStand", territory="India")
        self.limit_pages = limit_pages
        self.base_url = "https://bookstand.app"

    def run(self):
        self.logger.info("Starting BookStand Enhanced Crawler.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                self.logger.info("Loading BookStand Pre-Owned section...")
                page.goto(f"{self.base_url}/bookstand/pre-owned", timeout=60000)
                page.wait_for_timeout(5000)
                
                # Next.js Infinite Scroll or Pagination?
                for i in range(self.limit_pages):
                    self.logger.info(f"Scrolling page {i+1}...")
                    page.evaluate("window.scrollTo(0, document.body.scrollHeight)")
                    page.wait_for_timeout(3000)
                    
                    # Check for "Load More" button just in case
                    load_more = page.query_selector("button:has-text(\"Load More\"), button:has-text(\"View More\")")
                    if load_more and load_more.is_visible():
                        load_more.click()
                        page.wait_for_timeout(2000)

                # Collect all listing links
                links = page.query_selector_all("a[href*='/product/'], a[href*='/book/']")
                urls = []
                for link in links:
                    href = link.get_attribute("href")
                    if href:
                        if href.startswith("/"):
                            href = self.base_url + href
                        if href not in urls and href not in self._seen_urls:
                            urls.append(href)
                
                self.logger.info(f"Found {len(urls)} unique listing URLs. Starting deep crawl.")
                
                for url in urls:
                    try:
                        self._harvest_listing(url, context)
                    except Exception as e:
                        self.logger.error(f"Error harvesting {url}: {e}")
            except Exception as e:
                self.logger.error(f"Error loading page: {e}")
            finally:
                browser.close()
            
        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

    def _harvest_listing(self, url, context):
        detail_page = context.new_page()
        try:
            detail_page.goto(url, timeout=30000)
            detail_page.wait_for_timeout(2000)
            html = detail_page.content()
            
            # Title extraction
            title_elem = detail_page.query_selector("h1, .product-title, .text-3xl")
            title = title_elem.inner_text().strip() if title_elem else "Unknown Title"
            
            # Price extraction
            price_elem = detail_page.query_selector(".price, .text-green-600, .font-bold:has-text(\"₹\")")
            price = price_elem.inner_text().strip() if price_elem else None

            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                price=price,
                listing_url=url,
            )
            
            # MANDATORY: Scavenge metadata from the full detail page
            item = self.scavenge_metadata(html, item)
            
            # Capture seller comments/description
            desc_elem = detail_page.query_selector(".description, .mt-4.text-gray-600, #description")
            if desc_elem:
                item.seller_comments = desc_elem.inner_text().strip()
                # Scavenge again from description
                item = self.scavenge_metadata(item.seller_comments, item)

            self.save_item(item)
            self.cache_html(url.split("/")[-1], html, url=url)
            
        except Exception as e:
            self.logger.error(f"Error crawling detail page {url}: {e}")
        finally:
            detail_page.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=5)
    args = parser.parse_args()
    spider = BookStandSpider(limit_pages=args.limit)
    spider.run()
