from bs4 import BeautifulSoup
from urllib.parse import urljoin
from models import BookListing
from html_search_spider import HTMLSearchSpider

class LibraryBahMlSpider(HTMLSearchSpider):
    """
    Spider for Librairie Bah (Mali).
    A leading generalist bookstore in Bamako.
    Uses WordPress search.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Librairie Bah",
            base_url="https://librarybah.com",
            search_path="?s={query}",
            selectors={
                'container': 'div.ast-grid-common-col', 
                'title': 'h2.entry-title a',
                'link': 'h2.entry-title a',
                'price': '.price',
            },
            territory="Mali",
            limit_pages=limit_pages
        )

    def run(self):
        # Override to use a term that exists in Mali
        self.logger.info(f"Starting HTML Search crawler for {self.platform_name}. Limit: {self.limit_pages} pages.")
        search_term = "Mali" 
        
        for page in range(1, self.limit_pages + 1):
            url = f"{self.base_url}/{self.search_path}".format(query=search_term.replace(' ', '+'), page=page)
            self.logger.info(f"Fetching page {page}: {url}")
            try:
                r = self.client.get(url)
                if r.status_code == 200:
                    soup = BeautifulSoup(r.text, 'html.parser')
                    items = soup.select(self.selectors['container'])
                    if not items:
                        self.logger.info(f"No items found matching container '{self.selectors['container']}' on page {page}. Stopping.")
                        break
                    
                    for item in items:
                        title_el = item.select_one(self.selectors['title'])
                        if title_el:
                            title = title_el.text.strip()
                            link = title_el.get('href')
                            if link and not link.startswith('http'):
                                link = urljoin(self.base_url, link)
                            
                            listing = BookListing(
                                platform=self.platform_name,
                                territory=self.territory,
                                title=title,
                                listing_url=link
                            )
                            self.save_item(listing)
                else:
                    self.logger.info(f"Reached end of pagination ({r.status_code}) at page {page}.")
                    break
            except Exception as e:
                self.logger.error(f"Failed to fetch {url}: {e}")
                break
        
        self.logger.info(f"Finished {self.platform_name}. Scraped {self.items_scraped} items.")

if __name__ == "__main__":
    spider = LibraryBahMlSpider(limit_pages=1)
    spider.run()
