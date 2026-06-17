import argparse
import json
import re
from types import SimpleNamespace
from typing import Any

import httpx

from base_spider import BaseSpider
from isbn_utils import normalize_isbn
from models import BookListing

CONFIG = SimpleNamespace(platform_name="BookLal", territory="India")

class BookLalSpider(BaseSpider):
    """BookLal India crawler backed by the app's Firestore collection.

    Reverse Engineered from APK:
    - package: com.booklal.booklal
    - project: booklal
    - collection: AllBook

    Note: As of investigation, the 'AllBook' collection may require 
    authentication (Firebase ID Token). This crawler implements the 
    REST API structure used by the app.
    """

    PROJECT_ID = "booklal"
    API_KEY = "AIzaSyBWSRkCxem7HE7ucUpowuMkNUeONnF5zW4"
    BASE_URL = f"https://firestore.googleapis.com/v1/projects/{PROJECT_ID}/databases/(default)/documents"
    RUN_QUERY_URL = f"{BASE_URL}:runQuery"

    def __init__(self, limit_pages: int = 5, limit_items: int = 100):
        super().__init__(platform_name="BookLal", territory="India")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = httpx.Client(timeout=httpx.Timeout(25.0, connect=8.0), follow_redirects=True)

    def run(self):
        self.logger.info(
            "Starting BookLal Firestore harvest. limit_pages=%s limit_items=%s",
            self.limit_pages,
            self.limit_items,
        )
        try:
            page_size = 20  # App uses 10 for search, we'll use 20 for crawling
            last_doc = None
            
            for page_index in range(self.limit_pages):
                if self.items_scraped >= self.limit_items:
                    break
                
                documents = self._fetch_page(
                    limit=min(page_size, self.limit_items - self.items_scraped),
                    last_doc=last_doc
                )
                
                if not documents:
                    self.logger.info("No more documents found.")
                    break
                
                for doc in documents:
                    if self.items_scraped >= self.limit_items:
                        break
                        
                    listing = self._listing_from_document(doc)
                    if listing:
                        # Cache the raw document
                        doc_id = doc.get("name", "").rsplit("/", 1)[-1]
                        self.cache_html(
                            f"booklal_{doc_id}",
                            json.dumps(doc, ensure_ascii=False, indent=2),
                            url=listing.listing_url,
                        )
                        self.save_item(listing)
                    
                    last_doc = doc
                    
        except httpx.HTTPStatusError as e:
            if e.response.status_code == 403:
                self.logger.error("403 Forbidden: The 'AllBook' collection likely requires authentication.")
            else:
                self.logger.error(f"HTTP error occurred: {e}")
        except Exception as e:
            self.logger.error(f"An unexpected error occurred: {e}")
        finally:
            self.client.close()
            
        self.logger.info("Finished BookLal harvest. Saved %s items.", self.items_scraped)

    def _fetch_page(self, limit: int, last_doc: dict[str, Any] = None) -> list[dict[str, Any]]:
        query = {
            "structuredQuery": {
                "from": [{"collectionId": "AllBook"}],
                "orderBy": [{"field": {"fieldPath": "time"}, "direction": "DESCENDING"}],
                "limit": limit,
            }
        }
        
        if last_doc:
            # Implement cursor-based pagination
            fields = last_doc.get("fields", {})
            last_time = fields.get("time", {}).get("integerValue") or fields.get("time", {}).get("doubleValue")
            if last_time:
                query["structuredQuery"]["startAt"] = {
                    "values": [{"integerValue": str(last_time)}],
                    "before": False
                }

        response = self.client.post(
            self.RUN_QUERY_URL, 
            params={"key": self.API_KEY}, 
            json=query
        )
        response.raise_for_status()
        
        results = response.json()
        return [item["document"] for item in results if "document" in item]

    def _listing_from_document(self, doc: dict[str, Any]) -> BookListing | None:
        fields = {key: self._firestore_value(value) for key, value in doc.get("fields", {}).items()}
        
        title = self._clean(fields.get("BookName"))
        if not title:
            return None
            
        doc_id = doc.get("name", "").rsplit("/", 1)[-1]
        listing_url = f"https://booklal.com/book/{doc_id}" # Fictional URL for reference

        author = self._clean(fields.get("Author"))
        price = self._clean(fields.get("SellingPrice"))
        if price and not price.startswith("INR"):
            price = f"INR {price}"

        # Combine metadata into seller comments
        metadata = [
            self._label("Publisher", fields.get("Publication")),
            self._label("Category", fields.get("BookCategory")),
            self._label("City", fields.get("City")),
            self._label("Country", fields.get("CountryCode")),
            self._label("Description", fields.get("BookDescription")),
        ]
        seller_comments = "; ".join(part for part in metadata if part)

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            author=author,
            isbn=normalize_isbn(title) or normalize_isbn(fields.get("BookDescription")),
            category=self._clean(fields.get("BookCategory")),
            price=price,
            listing_url=listing_url,
            seller_comments=seller_comments or None,
        )

    def _firestore_value(self, value: dict[str, Any]) -> Any:
        if "stringValue" in value:
            return value["stringValue"]
        if "integerValue" in value:
            return int(value["integerValue"])
        if "doubleValue" in value:
            return float(value["doubleValue"])
        if "booleanValue" in value:
            return bool(value["booleanValue"])
        if "timestampValue" in value:
            return value["timestampValue"]
        if "arrayValue" in value:
            return [self._firestore_value(item) for item in value["arrayValue"].get("values", [])]
        if "mapValue" in value:
            return {
                key: self._firestore_value(item)
                for key, item in value["mapValue"].get("fields", {}).items()
            }
        return None

    def _label(self, label: str, value: Any) -> str | None:
        text = self._clean(value)
        return f"{label}: {text}" if text else None

    def _clean(self, value: Any) -> str | None:
        if value in (None, "", []):
            return None
        if isinstance(value, str):
            text = re.sub(r"\s+", " ", value).strip()
            return text or None
        return str(value)

def main():
    parser = argparse.ArgumentParser(description="BookLal India Firestore crawler")
    parser.add_argument("--limit-pages", type=int, default=5)
    parser.add_argument("--limit-items", type=int, default=100)
    args = parser.parse_args()
    
    spider = BookLalSpider(limit_pages=args.limit_pages, limit_items=args.limit_items)
    spider.run()

if __name__ == "__main__":
    main()
