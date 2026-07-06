import json
from bs4 import BeautifulSoup
from html_search_spider import HTMLSearchSpider

class LibrariaRoxhaSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        # We pass dummy search_path and selectors, since we will override the fetch and parse logic
        super().__init__(
            platform_name="LibrariaRoxha_XK", base_url="https://librariaroxha.com",
            search_path="?s={search_term}&post_type=product",
            selectors={
                'container': 'li.product',
                'title': '.woocommerce-loop-product__title',
                'price': '.woocommerce-Price-amount'
            },
            price_currency="EUR",
            territory="Kosovo", limit_pages=limit_pages
        )

    def run(self):
        self.logger.info(f"Starting LibrariaRoxha search spider. Limit: {self.limit_pages} pages.")
        search_term = os.getenv("RBM_SEARCH_TERM", "University of Chicago Press")
        
        # In Kosovo, they use Euro (€)
        url = f"{self.base_url}/{self.search_path}".format(search_term=search_term.replace(' ', '+'))
        self.logger.info(f"Fetching: {url}")
        
        response = self._get_robust_response(url)
        if not response:
            self.logger.error("Failed to fetch search page.")
            return

        soup = BeautifulSoup(response.text, "html.parser")
        templates = soup.find_all('script', type='text/template')
        
        items_found = []
        for t in templates:
            content = t.string
            if not content:
                continue
            content = content.strip()
            if content.startswith('\"') and content.endswith('\"'):
                try:
                    content = json.loads(content)
                except Exception:
                    content = content[1:-1].replace('\\\"', '\"').replace('\\/', '/')
            
            sub_soup = BeautifulSoup(content, 'html.parser')
            items_found.extend(sub_soup.select(self.selectors['container']))

        if not items_found:
            self.logger.info("No items found in script templates.")
            return

        for item in items_found[:self.limit_items] if self.limit_items else items_found:
            try:
                self.items_attempted += 1
                self._parse_item(item)
            except Exception as e:
                self.logger.error(f"Error parsing item: {e}")

        self.logger.info(f"Finished. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    import os
    os.environ["RBM_SEARCH_TERM"] = "novel"
    LibrariaRoxhaSpider(limit_pages=1).run()
