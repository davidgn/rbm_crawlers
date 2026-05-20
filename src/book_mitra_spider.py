import argparse
import json
import re
from types import SimpleNamespace
from typing import Any

import httpx

from base_spider import BaseSpider
from isbn_utils import normalize_isbn
from models import BookListing


CONFIG = SimpleNamespace(platform_name="Book Mitra", territory="India")


class BookMitraSpider(BaseSpider):
    """Book Mitra India crawler backed by the app's public Firestore collection.

    Decompiled APK:
    - package: com.theandroidgeek.bookmitra
    - project: bookmitra-d320d
    - collection: books

    The app also exposes user documents, but this crawler intentionally reads
    only listing documents and does not persist seller phone numbers.
    """

    PROJECT_ID = "bookmitra-d320d"
    API_KEY = "AIzaSyDLgDr2gYH9UJE2eOrf3jtgMznnXRvZgYw"
    BOOKS_URL = (
        "https://firestore.googleapis.com/v1/projects/"
        f"{PROJECT_ID}/databases/(default)/documents/books"
    )
    RUN_QUERY_URL = (
        "https://firestore.googleapis.com/v1/projects/"
        f"{PROJECT_ID}/databases/(default)/documents:runQuery"
    )

    def __init__(self, limit_pages: int = 3, limit_items: int = 50):
        super().__init__(platform_name="Book Mitra", territory="India")
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.client = httpx.Client(timeout=httpx.Timeout(25.0, connect=8.0), follow_redirects=True)

    def run(self):
        self.logger.info(
            "Starting Book Mitra Firestore harvest. limit_pages=%s limit_items=%s",
            self.limit_pages,
            self.limit_items,
        )
        try:
            page_size = min(100, max(1, self.limit_items))
            for page_index in range(self.limit_pages):
                if self.items_scraped >= self.limit_items:
                    break
                documents = self._fetch_page(
                    offset=page_index * page_size,
                    limit=min(page_size, self.limit_items - self.items_scraped),
                )
                if not documents:
                    break
                for doc in documents:
                    if self.items_scraped >= self.limit_items:
                        break
                    listing = self._listing_from_document(doc)
                    if listing:
                        self.cache_html(
                            self._cache_id(doc),
                            json.dumps(self._redacted_document(doc), ensure_ascii=False, indent=2),
                            url=listing.listing_url,
                        )
                        self.save_item(listing)
        finally:
            self.client.close()
        self.logger.info("Finished Book Mitra harvest. Saved %s items.", self.items_scraped)

    def _fetch_page(self, offset: int, limit: int) -> list[dict[str, Any]]:
        query = {
            "structuredQuery": {
                "from": [{"collectionId": "books"}],
                "orderBy": [{"field": {"fieldPath": "createdAt"}, "direction": "DESCENDING"}],
                "offset": offset,
                "limit": min(100, max(1, limit)),
            }
        }
        response = self.client.post(self.RUN_QUERY_URL, params={"key": self.API_KEY}, json=query)
        response.raise_for_status()
        return [item["document"] for item in response.json() if "document" in item]

    def _listing_from_document(self, doc: dict[str, Any]) -> BookListing | None:
        fields = {key: self._firestore_value(value) for key, value in doc.get("fields", {}).items()}
        title = self._clean(fields.get("title"))
        if not title:
            return None
        doc_id = doc.get("name", "").rsplit("/", 1)[-1]
        listing_url = f"{self.BOOKS_URL}/{doc_id}"

        listing_type = self._clean(fields.get("type"))
        price_text = self._format_price(fields.get("price"), listing_type)
        isbn = self._isbn_from_fields(fields)
        metadata = [
            self._label("Seller", fields.get("sellerName")),
            self._label("City", fields.get("city")),
            self._label("Type", listing_type),
            self._label("Class", fields.get("class")),
            self._label("Board", fields.get("board")),
            self._label("Subject", fields.get("subject")),
            self._label("Listed", self._millis_date(fields.get("createdAt"))),
            self._clean(fields.get("description")),
        ]
        seller_comments = "; ".join(part for part in metadata if part)

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            isbn=isbn,
            category=listing_type,
            condition=self._clean(fields.get("condition")),
            price=price_text,
            listing_url=listing_url,
            seller_comments=seller_comments or None,
        )

    def _firestore_value(self, value: dict[str, Any]) -> Any:
        if "stringValue" in value:
            return value["stringValue"]
        if "integerValue" in value:
            try:
                return int(value["integerValue"])
            except (TypeError, ValueError):
                return value["integerValue"]
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

    def _format_price(self, value: Any, listing_type: str | None) -> str | None:
        if listing_type and listing_type.lower() == "donate":
            return "INR 0"
        if value in (None, ""):
            return None
        try:
            numeric = float(value)
        except (TypeError, ValueError):
            return None
        if numeric < 0 or numeric > 1_000_000:
            return None
        if numeric.is_integer():
            return f"INR {int(numeric)}"
        return f"INR {numeric:.2f}".rstrip("0").rstrip(".")

    def _millis_date(self, value: Any) -> str | None:
        if value in (None, ""):
            return None
        try:
            from datetime import datetime, timezone

            return datetime.fromtimestamp(int(value) / 1000, tz=timezone.utc).date().isoformat()
        except (OSError, TypeError, ValueError):
            return None

    def _redacted_document(self, doc: dict[str, Any]) -> dict[str, Any]:
        redacted = json.loads(json.dumps(doc))
        fields = redacted.get("fields")
        if isinstance(fields, dict):
            fields.pop("sellerMobile", None)
        return redacted

    def _clean(self, value: Any) -> str | None:
        if value in (None, "", []):
            return None
        if isinstance(value, str):
            text = re.sub(r"\s+", " ", value).strip()
            return text or None
        return str(value)

    def _cache_id(self, doc: dict[str, Any]) -> str:
        doc_id = doc.get("name", "").rsplit("/", 1)[-1] or "document"
        safe_doc_id = re.sub(r"[^a-zA-Z0-9_-]+", "_", doc_id).strip("_")
        return f"bookmitra_{safe_doc_id}"

    def _isbn_from_fields(self, fields: dict[str, Any]) -> str | None:
        for key in ("isbn", "isbn13", "ISBN", "bookIsbn", "description", "title"):
            isbn = normalize_isbn(fields.get(key))
            if isbn:
                return isbn
        return None


def main():
    parser = argparse.ArgumentParser(description="Book Mitra India Firestore crawler")
    parser.add_argument("--limit-pages", type=int, default=3)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()
    BookMitraSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()


if __name__ == "__main__":
    main()
