from html_search_spider import HTMLSearchSpider
from curl_cffi import requests as curlex

class BukukitaIdSpider(HTMLSearchSpider):
    """
    Spider for Bukukita (Indonesia).
    A leading online bookstore in Indonesia.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Bukukita",
            base_url="https://bukukita.com",
            search_path="searchresult.php?key={query}&page={page}",
            selectors={
                'container': '.product-preview-wrapper', 
                'title': '.product-preview__info__title a',
                'link': '.product-preview__info__title a',
                'price': '.price-box',
            },
            territory="Indonesia",
            limit_pages=limit_pages
        )

    def _fetch_page(self, url):
        try:
            r = curlex.get(url, impersonate="chrome110", timeout=30, verify=False)
            r.raise_for_status()
            return r.text
        except Exception as e:
            self.logger.error(f"Curl_cffi failed to fetch {url}: {e}")
            return None

    def run(self, search_term="Potter"):
        self.logger.info(f"Starting Bukukita (ID) crawler with curl_cffi. Limit: {self.limit_pages} pages.")
        
        for page in range(1, self.limit_pages + 1):
            url = f"{self.base_url}/{self.search_path.format(query=search_term, page=page)}"
            self.logger.info(f"Fetching {url}")
            
            html = self._fetch_page(url)
            if not html: break
            
            from bs4 import BeautifulSoup
            soup = BeautifulSoup(html, "html.parser")
            items = soup.select(self.selectors['container'])
            if not items:
                self.logger.info(f"No items found matching {self.selectors['container']} on page {page}. Stopping.")
                break
                
            for item in items:
                self._parse_item(item)
            
            import time
            time.sleep(2)

if __name__ == "__main__":
    spider = BukukitaIdSpider(limit_pages=1)
    spider.run()
