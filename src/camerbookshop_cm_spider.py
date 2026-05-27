import json
from base_spider import BaseSpider
from models import BookListing

class CamerBookshopSpider(BaseSpider):
    """
    Spider for CamerBookshop Online (Cameroon).
    Uses the Bulletins Institutionnels API.
    """
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="CamerBookshop Online",
            territory="Cameroon"
        )
        self.limit_pages = limit_pages
        self.api_base = "https://api.bulletinsinstitutionnels.com/livre_search"
        import httpx
        self.client = httpx.Client(timeout=30, verify=False, follow_redirects=True)

    def run(self, search_term=""):
        self.logger.info(f"Starting CamerBookshop API crawler. Limit: {self.limit_pages} pages.")
        
        for page in range(1, self.limit_pages + 1):
            # API expects /page/size/category
            url = f"{self.api_base}/{page}/20/tous"
            params = {
                'jwt': '',
                'request': json.dumps({
                    'titre': search_term, 
                    'thematique': '', 
                    'bootstrap': 1, 
                    'classement': 'livre'
                })
            }
            
            try:
                response = self.client.get(url, params=params, timeout=20)
                response.raise_for_status()
                data = response.json()
                
                # The 'datas' field is a stringified JSON array
                raw_datas = data.get('datas')
                if not raw_datas or raw_datas == "[]":
                    self.logger.info(f"No more data at page {page}.")
                    break
                    
                items = json.loads(raw_datas)
                self.logger.info(f"Fetched {len(items)} items from page {page}.")
                
                for item in items:
                    book = BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=item.get('titre'),
                        author=item.get('auteur'),
                        price=f"XAF {item.get('prix')}" if item.get('prix') else None,
                        isbn=item.get('isbn'),
                        listing_url=f"https://camerbookshop.online/#produits/details/{item.get('id')}" # Inferred hash URL
                    )
                    self.save_item(book)
                    
            except Exception as e:
                self.logger.error(f"Failed to fetch {url}: {e}")
                break
                
            import time
            time.sleep(2)

if __name__ == "__main__":
    spider = CamerBookshopSpider(limit_pages=1)
    spider.run()
