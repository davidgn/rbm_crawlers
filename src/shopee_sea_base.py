import argparse
import time
import re
import random
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class ShopeeSeaSpider(BaseSpider):
    def __init__(self, platform_name: str, territory: str, base_url: str, search_query: str, limit_pages: int = 5):
        super().__init__(platform_name=platform_name, territory=territory)
        self.base_url = base_url
        self.search_query = search_query
        self.limit_pages = limit_pages

    def run(self):
        self.logger.info(f"Starting {self.platform_name} Enhanced Crawler. Query: {self.search_query}")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                # Add random jitter to navigation
                search_url = f"{self.base_url}/search?keyword={self.search_query.replace(' ', '%20')}"
                self.logger.info(f"Loading search page: {search_url}")
                
                # Use a real user-like wait
                page.goto(search_url, wait_until="domcontentloaded", timeout=60000)
                page.wait_for_timeout(random.randint(5000, 8000))
                
                if "Robot Check" in page.content():
                    self.logger.error("Blocked by Robot Check.")
                    return

                urls = []
                for current_page in range(self.limit_pages):
                    self.logger.info(f"Collecting links from page {current_page + 1}...")
                    
                    # More natural scrolling
                    for _ in range(8):
                        page.mouse.wheel(0, 600)
                        page.wait_for_timeout(random.randint(800, 1500))
                    
                    # Shopee link pattern
                    links = page.query_selector_all("a[href*='-i.']")
                    for link in links:
                        href = link.get_attribute("href")
                        if href:
                            if href.startswith("/"):
                                href = self.base_url + href
                            # Filter out non-product links
                            if "-i." in href and href not in urls and href not in self._seen_urls:
                                urls.append(href)
                    
                    self.logger.info(f"Total unique URLs found: {len(urls)}")
                    if len(urls) >= 20: break # Good enough for smoke test
                    
                    # Next page
                    next_btn = page.query_selector("button.shopee-icon-button--right")
                    if next_btn and next_btn.is_enabled():
                        next_btn.click()
                        page.wait_for_timeout(random.randint(3000, 5000))
                    else:
                        break

                self.logger.info(f"Deep crawling {len(urls)} listings.")
                for url in urls[:10]: # Limit for test
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
            detail_page.wait_for_timeout(random.randint(4000, 6000))
            html = detail_page.content()
            
            data = detail_page.evaluate("""
                () => {
                    const getText = sel => (document.querySelector(sel) || {}).textContent?.trim() || "";
                    return {
                        title: getText(".V_P9_7, ._3g8H9a, .att_n-, h1"),
                        price: getText(".pqTWkA, ._3n5NQx, .G2747_"),
                        description: getText(".f_79S0, .product-detail__description, ._2u69s8")
                    };
                }
            """)
            
            title = data.get("title") or "Unknown Title"
            price = data.get("price")
            desc = data.get("description")

            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                price=price,
                listing_url=url,
                seller_comments=desc
            )
            
            item = self.scavenge_metadata(html, item)
            if desc:
                item = self.scavenge_metadata(desc, item)

            self.save_item(item)
            self.cache_html(url.split(".")[-1], html, url=url)
            
        except Exception as e:
            self.logger.error(f"Error detail page {url}: {e}")
        finally:
            detail_page.close()
