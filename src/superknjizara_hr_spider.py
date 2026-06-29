from curl_cffi import requests as curlex
from bs4 import BeautifulSoup
from models import BookListing
from base_spider import BaseSpider

class SuperknjizaraHrSpider(BaseSpider):
    """
    Spider for Superknjižara (Croatia).
    Uses curl_cffi to bypass Cloudflare 403 Forbidden.
    """
    def __init__(self, limit_pages=10, **kwargs):
        super().__init__(platform_name="Superknjižara", territory="Croatia")
        self.limit_pages = limit_pages
        self.base_url = "https://superknjizara.hr/hr/rezultati-pretrage"

    def run(self, search_term=None):
        query = search_term or "University of Chicago Press"
        self.logger.info(f"Starting crawler for Superknjižara. Limit: {self.limit_pages} pages.")
        
        for page in range(1, self.limit_pages + 1):
            url = f"{self.base_url}?keyword={query.replace(' ', '+')}&page={page}"
            self.logger.info(f"Fetching page {page}: {url}")
            
            try:
                r = curlex.get(url, impersonate="chrome110", timeout=30)
                if r.status_code == 404:
                    self.logger.info(f"Reached end of pagination (404/400).")
                    break
                elif r.status_code != 200:
                    self.logger.warning(f"Got status {r.status_code}. Stopping.")
                    break
                
                soup = BeautifulSoup(r.text, 'html.parser')
                # Parsing logic would go here
            except Exception as e:
                self.logger.error(f"Error fetching page {page}: {e}")
                break

if __name__ == "__main__":
    spider = SuperknjizaraHrSpider()
    spider.run()
