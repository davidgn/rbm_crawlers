from bs4 import BeautifulSoup
from html_search_spider import HTMLSearchSpider

class BeninMarketPlaceSpider(HTMLSearchSpider):
    """
    Spider for BeninMarketPlace (Benin).
    Requires a mobile User-Agent and session cookies from the homepage.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="BeninMarketPlace",
            base_url="https://beninmarketplace.bj",
            search_path="search?search={query}&page={page}",
            selectors={
                'container': '.product-item', 
                'title': '.product-title a',
                'link': '.product-title a',
                'price': '.price',
                'author': '.product-user a'
            },
            territory="Benin",
            limit_pages=limit_pages
        )
        # Use mobile User-Agent as discovered in probing
        self.client.headers.update({
            'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Mobile/15E148 Safari/604.1'
        })
        self.client.verify = False

    def run(self):
        # First request to homepage to establish session/cookies
        try:
            self.logger.info("Accessing homepage to establish session...")
            self.client.get(self.base_url, timeout=15)
        except Exception as e:
            self.logger.error(f"Failed to establish session: {e}")
            
        # We need to provide the search_term in the URL formation
        # The base class run() uses search_path.format(query=..., page=...)
        # But it expects self.search_term to be set if it has its own loop
        # Wait, I'll just override the loop to be sure
        search_terms = ["Livre", "Droit"]
        
        for term in search_terms:
            for page in range(1, self.limit_pages + 1):
                url = f"{self.base_url}/{self.search_path.format(query=term, page=page)}"
                self.logger.info(f"Fetching {url}")
                
                try:
                    response = self.client.get(url, headers=self.get_random_headers())
                    if response.status_code in [404, 400]: break
                    response.raise_for_status()
                    
                    soup = BeautifulSoup(response.text, "html.parser")
                    items = soup.select(self.selectors['container'])
                    if not items: break
                    
                    for item in items:
                        self._parse_item(item)
                except Exception as e:
                    self.logger.error(f"Failed to fetch {url}: {e}")
                    break
                import time
                time.sleep(2)

if __name__ == "__main__":
    spider = BeninMarketPlaceSpider(limit_pages=1)
    spider.run()
