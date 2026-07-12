import argparse
import random
import time
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

    def _get_robust_response(self, url: str, max_retries: int = 3):
        for attempt in range(max_retries):
            try:
                headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"}
                resp = self.client.get(url, headers=headers)
                if resp.status_code in (403, 429, 500, 502, 503, 504):
                    self.logger.warning(f"Got status {resp.status_code} for {url}. Retrying ({attempt+1}/{max_retries})...")
                    time.sleep(2 ** attempt)
                    continue
                return resp
            except Exception as e:
                self.logger.warning(f"Request failed for {url}: {e}. Retrying ({attempt+1}/{max_retries})...")
                time.sleep(2 ** attempt)
        return None

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
            
            response = None
            for attempt in range(3):
                try:
                    response = self.client.post(query_url, params={"key": self.API_KEY}, json=query)
                    if response.status_code in (403, 429, 500, 502, 503, 504):
                        time.sleep(2 ** attempt)
                        continue
                    break
                except Exception as e:
                    time.sleep(2 ** attempt)

            if not response:
                return
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
        
        raw_price = self._get_val(fields.get("price"))
        price_val = str(raw_price) if raw_price is not None else None
        
        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=self._get_val(fields.get("author")),
            isbn=self._get_val(fields.get("isbn")),
            condition=self._get_val(fields.get("condition")),
            price=price_val,
            price_currency="INR",
            listing_url=listing_url,
            seller_comments=self._get_val(fields.get("message")),
            seller_id=self._get_val(fields.get("userId"))
        )
        item = self.scavenge_metadata(str(fields), item)
        self.save_item(item)

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
