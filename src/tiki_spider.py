import argparse
import time
import json
import os
import re
from playwright.sync_api import sync_playwright
from playwright_stealth import Stealth
from models import BookListing
from base_spider import BaseSpider

class TikiSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Tiki.vn", territory="Vietnam")
        self.limit_pages = limit_pages
        # Primary is Vietnamese: Prioritizing English (320) then Vietnamese (316) and others
        self.category_ids = [320, 316, 7741, 18328]
        self.isbn_pattern = re.compile(r'\b(97[89][0-9]{10})\b')

    def scavenge_isbn(self, text):
        if not text: return None
        clean_text = re.sub('<[^<]+?>', '', text)
        match = self.isbn_pattern.search(clean_text)
        return match.group(1) if match else None

    def run(self):
        self.logger.info(f"Starting Tiki Crawler. Priority: English Books (320). Limit: {self.limit_pages} pages.")
        
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
                            
                            detail_res = page.evaluate(f'''async () => {{
                                try {{
                                    const res = await fetch("https://tiki.vn/api/v2/products/{pid}");
                                    return await res.json();
                                }} catch(e) {{ return null; }}
                            }}''')
                            
                            if not detail_res: continue
                            
                            isbn = None
                            publisher = None
                            pub_year = None
                            
                            for spec in detail_res.get('specifications', []):
                                for attr in spec.get('attributes', []):
                                    code = attr.get('code', '').lower()
                                    name = attr.get('name', '').lower()
                                    val = attr.get('value')
                                    if code in ['isbn', 'barcode'] or 'isbn' in name: isbn = val
                                    if code in ['publisher_vn', 'manufacturer'] or 'phát hành' in name: publisher = val
                                    if code == 'publication_date': pub_year = val.split('-')[0]

                            if not isbn: isbn = self.scavenge_isbn(detail_res.get('description'))
                                
                            listing = BookListing(
                                territory="Vietnam",
                                platform="Tiki.vn",
                                title=detail_res.get('name'),
                                author=detail_res.get('authors', [{}])[0].get('name') if detail_res.get('authors') else None,
                                isbn=isbn,
                                publisher=publisher,
                                publication_year=pub_year,
                                category=detail_res.get('categories', {}).get('name'),
                                price=f"VND {detail_res.get('price')}",
                                listing_url=f"https://tiki.vn/{detail_res.get('url_path')}",
                                condition=None
                            )
                            self.save_item(listing)
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
