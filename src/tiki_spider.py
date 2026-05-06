import argparse
import time
import json
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class TikiSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Tiki.vn", territory="Vietnam")
        self.limit_pages = limit_pages
        # Focus on English Books (320) then Vietnamese (316)
        self.category_ids = [320, 316, 7741, 18328]

    def run(self):
        self.logger.info(f"Starting Tiki Harvest (Cache-First). Priority: English Books. Limit: {self.limit_pages} pages.")
        
        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                page.goto("https://tiki.vn", timeout=60000, wait_until="domcontentloaded")
                page.wait_for_timeout(3000)
                
                for cat_id in self.category_ids:
                    self.logger.info(f"=== Category: {cat_id} ===")
                    for current_page in range(1, self.limit_pages + 1):
                        list_res = page.evaluate(f'''async () => {{
                            try {{
                                const res = await fetch("https://tiki.vn/api/v2/products?limit=40&category={cat_id}&page={current_page}");
                                return await res.json();
                            }} catch(e) {{ return null; }}
                        }}''')
                        
                        if not list_res or 'data' not in list_res or not list_res['data']: break
                            
                        for prod in list_res['data']:
                            pid = prod.get('id')
                            if not pid: continue
                            
                            detail_res_text = page.evaluate(f'''async () => {{
                                try {{
                                    const res = await fetch("https://tiki.vn/api/v2/products/{pid}");
                                    return await res.text();
                                }} catch(e) {{ return null; }}
                            }}''')
                            
                            if detail_res_text:
                                # CACHE JSON response
                                self.cache_html(str(pid), detail_res_text)
                                
                                item = BookListing(
                                    territory="Vietnam",
                                    platform="Tiki.vn",
                                    title=prod.get('name') or "Cached API Item",
                                    listing_url=f"https://tiki.vn/product-p{pid}.html",
                                    condition="Cached API for extraction"
                                )
                                self.save_item(item)
                        
                        page.wait_for_timeout(1000)
                        
            except Exception as e:
                self.logger.error(f"Crawl failed: {e}")
            finally:
                browser.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--limit", type=int, default=50)
    args = parser.parse_args()
    TikiSpider(limit_pages=args.limit).run()
