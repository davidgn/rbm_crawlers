import argparse
import httpx
from base_spider import BaseSpider
from models import BookListing

class AskitabSpider(BaseSpider):
    """Askitab India crawler backed by Firebase Firestore.
    
    Reverse Engineered from: https://www.askitab.com/
    Project ID: askitab-ad7f5
    Collection: listedBooks
    """
    
    PROJECT_ID = "askitab-ad7f5"
    API_KEY = "AIzaSyB7YHobeoMhb24Lcy7CWmNT3lSs8988gYs"
    BASE_URL = f"https://firestore.googleapis.com/v1/projects/{PROJECT_ID}/databases/(default)/documents"

    def __init__(self, limit_items=100):
        super().__init__(platform_name="Askitab", territory="India")
        self.limit_items = limit_items
        self.client = httpx.Client(timeout=30.0)

    def run(self):
        self.logger.info(f"Starting Askitab Firestore harvest. Limit: {self.limit_items} items.")
        
        try:
            # Using structured query for descending order
            query_url = f"{self.BASE_URL}:runQuery"
            query = {
                "structuredQuery": {
                    "from": [{"collectionId": "listedBooks"}],
                    "orderBy": [{"field": {"fieldPath": "createdAt"}, "direction": "DESCENDING"}],
                    "limit": self.limit_items
                }
            }
            
            response = self.client.post(query_url, params={"key": self.API_KEY}, json=query)
            response.raise_for_status()
            
            results = response.json()
            for result in results:
                if "document" not in result:
                    continue
                
                if self.items_scraped >= self.limit_items:
                    break
                    
                self._process_document(result["document"])
                
        except Exception as e:
            self.logger.error(f"Error in Askitab crawler: {e}")
        finally:
            self.client.close()

        self.logger.info(f"Finished Askitab. Scraped {self.items_scraped} items.")

    def _process_document(self, doc):
        fields = doc.get("fields", {})
        
        title = self._get_val(fields.get("title"))
        if not title:
            return
            
        doc_name = doc.get("name", "")
        doc_id = doc_name.split("/")[-1]
        listing_url = f"https://www.askitab.com/book/{doc_id}"
        
        price = self._get_val(fields.get("price"))
        price_text = f"INR {price}" if price else "Free"
        
        self.save_item(BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=self._get_val(fields.get("author")),
            isbn=self._get_val(fields.get("isbn")),
            condition=self._get_val(fields.get("condition")),
            price=price_text,
            listing_url=listing_url,
            seller_comments=self._get_val(fields.get("message")),
            seller_id=self._get_val(fields.get("userId"))
        ))

    def _get_val(self, field):
        if not field:
            return None
        return field.get("stringValue") or field.get("integerValue") or field.get("doubleValue") or field.get("timestampValue")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Askitab India Firestore crawler")
    parser.add_argument("--limit", type=int, default=100, help="Max items to fetch")
    args = parser.parse_args()
    spider = AskitabSpider(limit_items=args.limit)
    spider.run()
