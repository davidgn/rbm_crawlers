import time
from playwright_search_spider import PlaywrightSearchSpider

class Qiqi788SearchSpider(PlaywrightSearchSpider):
    """
    Spider for 7788旧书 (7788js.7788.com) - Search-enabled version.
    Uses Playwright to handle the complex 7788 network and its bot protection.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="7788旧书",
            base_url="https://7788js.7788.com",
            # We use a custom run method to handle the search button and multiple categories
            search_path="unused",
            selectors={
                'container': 'div.product_list', 
                'title': '.product_list_title a',
                'link': '.product_list_title a',
                'price': '.product_list_price',
            },
            territory="China",
            limit_pages=limit_pages
        )

    def run(self, search_term="哈利波特"):
        self.logger.info(f"Starting 7788旧书 Playwright Search. Term: {search_term}")
        
        from playwright.sync_api import sync_playwright
        from playwright_stealth import Stealth

        with sync_playwright() as p:
            browser, context = self.get_playwright_stealth_config(p)
            page = context.new_page()
            Stealth().apply_stealth_sync(page)
            
            try:
                page.goto(self.base_url, wait_until="networkidle")
                # Find search input and button
                page.wait_for_selector('input#s00', timeout=20000)
                page.fill('input#s00', search_term)
                page.click('input[type="submit"]')
                
                time.sleep(10)
                
                # Check results
                for page_num in range(1, self.limit_pages + 1):
                    self.logger.info(f"Scraping page {page_num} for {search_term}")
                    content = page.content()
                    from bs4 import BeautifulSoup
                    soup = BeautifulSoup(content, 'html.parser')
                    
                    items = soup.select(self.selectors['container'])
                    if not items:
                        self.logger.info("No items found on page. Ending search.")
                        break
                        
                    for item in items:
                        self._parse_item(item)
                        
                    break # For smoke test
            except Exception as e:
                self.logger.error(f"7788 Search Error: {e}")
            finally:
                browser.close()

if __name__ == "__main__":
    spider = Qiqi788SearchSpider(limit_pages=1)
    spider.run()
