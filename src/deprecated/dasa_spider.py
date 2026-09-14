import httpx
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class DasaSpider(BaseSpider):
    def __init__(self, limit_pages=50):
        super().__init__(platform_name="Dasa Books", territory="Thailand")
        self.limit_pages = limit_pages
        # Dasa Books uses a simpler static-ish list, but we'll target the main browse/search
        self.base_url = "http://www.dasabookcafe.com/online-catalogue.html"
        self.client = httpx.Client(timeout=30.0, follow_redirects=True)

    def run(self):
        self.logger.info("Starting Dasa Books Thailand Harvest (Static).")
        
        # Dasa often has a huge single-page list or simple pagination.
        # If it's single page, we just harvest the whole thing.
        try:
            resp = self.client.get(self.base_url)
            resp.raise_for_status()
            soup = BeautifulSoup(resp.text, "html.parser")
            
            # Dasa usually provides a searchable database interface.
            # We'll try to find any "all" or generic browse link.
            # For now, we'll harvest the main landing page content to cache.
            self.cache_html("dasabooks_main", resp.text)
            
            # Minimal record for the main catalogue
            item = BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title="Dasa Online Catalogue Landing",
                listing_url=self.base_url,
                condition="Used (Secondhand Bookstore)"
            )
            self.save_item(item)
            
            self.logger.info("Dasa landing cached. Note: Dasa may require specific search injection for full inventory.")
            
        except Exception as e:
            self.logger.error(f"Dasa fetch failed: {e}")

if __name__ == "__main__":
    DasaSpider().run()
