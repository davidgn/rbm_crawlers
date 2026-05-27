import json
import re
import httpx
from html_search_spider import HTMLSearchSpider
from models import BookListing

class BooktopiaAuSpider(HTMLSearchSpider):
    """
    Spider for Booktopia (Australia).
    Uses the _next/data API with a dynamically discovered build ID.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Booktopia",
            base_url="https://www.booktopia.com.au",
            search_path="_next/data/{build_id}/search.json?keywords={query}&page={page}",
            selectors={'container': 'unused', 'title': 'unused'},
            territory="Australia",
            limit_pages=limit_pages
        )
        self.build_id = self._discover_build_id()

    def _discover_build_id(self):
        try:
            self.logger.info("Discovering Booktopia Build ID...")
            r = httpx.get(self.base_url, headers=self.get_random_headers(), timeout=15, verify=False)
            match = re.search(r'\"buildId\":\"(.*?)\"', r.text)
            if match:
                bid = match.group(1)
                self.logger.info(f"Found Build ID: {bid}")
                return bid
        except Exception as e:
            self.logger.error(f"Failed to discover Build ID: {e}")
        return None

    def run(self, search_term="Potter"):
        if not self.build_id:
            self.logger.error("No Build ID discovered. Cannot proceed.")
            return

        self.logger.info(f"Starting Booktopia (AU) crawler using Build ID: {self.build_id}")
        
        for page in range(1, self.limit_pages + 1):
            url = f"{self.base_url}/{self.search_path.format(build_id=self.build_id, query=search_term, page=page)}"
            self.logger.info(f"Fetching {url}")
            
            try:
                r = self.client.get(url, headers=self.get_random_headers())
                if r.status_code == 404:
                    self.logger.info("Build ID might be expired or page not found. Retrying discovery.")
                    self.build_id = self._discover_build_id()
                    if not self.build_id: break
                    url = f"{self.base_url}/{self.search_path.format(build_id=self.build_id, query=search_term, page=page)}"
                    r = self.client.get(url, headers=self.get_random_headers())

                r.raise_for_status()
                data = r.json()
                products = data.get('pageProps', {}).get('searchData', {}).get('pagination', {}).get('products', [])
                
                if not products:
                    self.logger.info(f"No products found on page {page}. Stopping.")
                    break
                    
                for p in products:
                    title = p.get('displayName')
                    if not title: continue
                    
                    author = ", ".join([c.get('name') for c in p.get('contributors', [])])
                    price = p.get('salePrice')
                    listing_url = self.base_url + "/" + p.get('productUrl', '')

                    book = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=title,
                        author=author,
                        price=f"AUD {price}" if price else None,
                        listing_url=listing_url,
                    )
                    self.save_item(book)
            except Exception as e:
                self.logger.error(f"Failed to fetch {url}: {e}")
                break
                
            import time
            time.sleep(2)

if __name__ == "__main__":
    spider = BooktopiaAuSpider(limit_pages=1)
    spider.run()
