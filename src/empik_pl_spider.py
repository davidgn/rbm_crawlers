from html_search_spider import HTMLSearchSpider
from curl_cffi import requests as curlex

class EmpikPlSpider(HTMLSearchSpider):
    """
    Spider for Empik (Poland).
    Largest retailer in Poland for books and media.
    Uses curl_cffi to bypass TLS fingerprinting.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Empik",
            base_url="https://www.empik.com",
            search_path="szukaj/produkt?q={query}&p={page}",
            selectors={
                'container': 'div[data-product-id]', 
                'title': '.ta-product-title',
                'link': 'a.search-list-item-hover',
                'price': '.price',
            },
            territory="Poland",
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
        self.logger.info(f"Starting Empik (PL) crawler with curl_cffi. Limit: {self.limit_pages} pages.")
        
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
    spider = EmpikPlSpider(limit_pages=1)
    spider.run()
