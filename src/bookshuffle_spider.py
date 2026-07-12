"""
Book Shuffle spider -- Egypt used-book marketplace app.

The Android package is a Flutter/Firebase app.  The downloaded XAPK includes a
Firebase service-account JSON asset, which this crawler reads at runtime from a
local APK/XAPK path.  The credential is not committed to the repository.

Default target: auto-discovered Firestore collection group for public listings.
"""

import argparse
import base64
import io
import json
import random
import re
import time
import zipfile
from pathlib import Path
from typing import Any

import httpx
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import padding

from base_spider import BaseSpider
from models import BookListing


class BookShuffleSpider(BaseSpider):
    PROJECT_ID = "book-shuffle-9e67d"
    SA_ASSET_PATH = "assets/flutter_assets/assets/json/book-shuffle-9e67d-firebase-adminsdk-55oh5-e2ce8529c3.json"
    FIRESTORE_BASE = f"https://firestore.googleapis.com/v1/projects/{PROJECT_ID}/databases/(default)/documents"
    CANDIDATE_COLLECTION_GROUPS = ("Books", "AvailableBooks", "ShuffledBooks")
    SENSITIVE_KEYS = {
        "email",
        "phone",
        "phoneNumber",
        "sellerPhoneNumber",
        "token",
        "fcmToken",
        "password",
        "private_key",
        "privateKey",
        "likes",
    }

    def __init__(
        self,
        apk_path: str = "",
        collection_group: str = "auto",
        limit: int = 100,
        page_size: int = 50,
        limit_pages: int | None = None,
        limit_items: int | None = None,
        query: str | None = None,
    ):
        super().__init__(platform_name="BookShuffle", territory="Egypt")
        self.apk_path = Path(apk_path).expanduser() if apk_path else Path(".")
        self.collection_group = collection_group
        self.limit = limit_items if limit_items is not None else limit
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        self.query = query
        self.page_size = min(page_size, 100)
        self.client = httpx.Client(timeout=60.0)
        self.access_token: str | None = None

    def _get_robust_response(self, url: str, max_retries: int = 3):
        for attempt in range(max_retries):
            try:
                resp = self.client.get(url)
                if resp.status_code in [403, 429, 500, 502, 503, 504]:
                    self.logger.warning(f"Got status {resp.status_code} for {url}. Retrying ({attempt+1}/{max_retries})...")
                    time.sleep(2 ** attempt)
                    continue
                return resp
            except Exception as e:
                self.logger.warning(f"Request failed for {url}: {e}. Retrying ({attempt+1}/{max_retries})...")
                time.sleep(2 ** attempt)
        return None

    def run(self):
        if not self.apk_path.exists() or self.apk_path.is_dir():
            self.logger.warning("APK path %s does not exist or is not specified; skipping run.", self.apk_path)
            return
        self.access_token = self._access_token()
        collection = self.collection_group
        docs = self._query_collection_group(collection, self.page_size)
        if not docs and collection == "auto":
            collection, docs = self._discover_collection_group()

        if not docs:
            self.logger.warning("No Book Shuffle listing documents found.")
            return

        self.logger.info("Using Firestore collection group %s.", collection)
        self.cache_html(
            f"{collection.lower()}_sample",
            json.dumps([self._sanitize_doc(doc) for doc in docs], ensure_ascii=False, indent=2),
            url=f"{self.FIRESTORE_BASE}:runQuery#{collection}",
        )

        for doc in docs[: self.limit]:
            if self.limit_items is not None and self.items_scraped >= self.limit_items:
                break
            listing = self._listing_from_doc(doc)
            if listing:
                self.save_item(listing)

        self.logger.info("Finished Book Shuffle harvest. Saved %s items.", self.items_scraped)

    def _discover_collection_group(self) -> tuple[str, list[dict[str, Any]]]:
        for collection in self.CANDIDATE_COLLECTION_GROUPS:
            docs = self._query_collection_group(collection, self.page_size)
            if self._book_like_docs(docs):
                return collection, docs
        return "auto", []

    def _book_like_docs(self, docs: list[dict[str, Any]]) -> bool:
        for doc in docs:
            data = self._doc_data(doc)
            if any(data.get(key) for key in ("bookTitle", "bookName", "title")):
                return True
        return False

    def _query_collection_group(self, collection: str, limit: int) -> list[dict[str, Any]]:
        payload = {
            "structuredQuery": {
                "from": [{"collectionId": collection, "allDescendants": True}],
                "limit": limit,
            }
        }
        for attempt in range(3):
            try:
                response = self.client.post(
                    f"{self.FIRESTORE_BASE}:runQuery",
                    headers=self._headers(),
                    json=payload,
                )
                if response.status_code in [403, 429, 500, 502, 503, 504]:
                    time.sleep(2 ** attempt)
                    continue
                response.raise_for_status()
                rows = response.json()
                return [row["document"] for row in rows if isinstance(row, dict) and isinstance(row.get("document"), dict)]
            except Exception as e:
                if attempt == 2:
                    raise
                time.sleep(2 ** attempt)
        return []

    def _listing_from_doc(self, doc: dict[str, Any]) -> BookListing | None:
        data = self._doc_data(doc)
        title = self._first_text(data, "bookTitle", "bookName", "title", "bookSubtitle")
        if not title:
            return None

        doc_id = str(doc.get("name", "")).rsplit("/", 1)[-1]
        seller_id = self._first_text(data, "sellerId", "bookSeller")
        category = self._join_values(data.get("category") or data.get("subCategory") or data.get("subcategory"))
        city = self._join_values(
            data.get("city") or data.get("area") or data.get("governorate") or data.get("city_name_en")
        )
        comments = self._comments(data, city)
        price, price_currency = self._price_info(data)

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            seller_id=seller_id,
            title=title,
            author=self._join_values(data.get("authors") or data.get("bookAuthors")),
            category=category,
            condition=self._first_text(data, "bookCondition", "bookAvailability", "priceStatus"),
            price=price,
            price_currency=price_currency,
            listing_url=f"https://bookshuffle.net/#/book/{doc_id}",
            seller_comments=comments,
        )

    def _comments(self, data: dict[str, Any], city: str | None) -> str | None:
        parts: list[str] = []
        for label, value in (
            ("description", self._first_text(data, "bookDescription", "commentsBySeller")),
            ("city", city),
            ("availability", self._first_text(data, "bookAvailability")),
        ):
            if value:
                parts.append(f"{label}={value}")
        return "; ".join(parts) if parts else None

    def _price_info(self, data: dict[str, Any]) -> tuple[str | None, str | None]:
        value = data.get("price") or data.get("bookPrice")
        if value is None:
            return None, None
        num_str = None
        if isinstance(value, (int, float)):
            num_str = f"{float(value):.2f}"
        elif isinstance(value, str) and value:
            clean = re.sub(r"[^\d.]", "", value)
            if clean:
                try:
                    num_str = f"{float(clean):.2f}"
                except ValueError:
                    num_str = clean
        if num_str:
            return num_str, "EGP"
        return None, None

    def _doc_data(self, doc: dict[str, Any]) -> dict[str, Any]:
        fields = doc.get("fields")
        if not isinstance(fields, dict):
            return {}
        return {key: self._firestore_value(value) for key, value in fields.items()}

    def _firestore_value(self, value: Any) -> Any:
        if not isinstance(value, dict):
            return None
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
        if "nullValue" in value:
            return None
        if "arrayValue" in value:
            items = value["arrayValue"].get("values", [])
            return [self._firestore_value(item) for item in items]
        if "mapValue" in value:
            fields = value["mapValue"].get("fields", {})
            return {key: self._firestore_value(item) for key, item in fields.items()}
        if "geoPointValue" in value:
            geo = value["geoPointValue"]
            return {"latitude": geo.get("latitude"), "longitude": geo.get("longitude")}
        return None

    def _sanitize_doc(self, doc: dict[str, Any]) -> dict[str, Any]:
        data = self._doc_data(doc)
        return {
            "id": str(doc.get("name", "")).rsplit("/", 1)[-1],
            "fields": self._sanitize_value(data),
        }

    def _sanitize_value(self, value: Any) -> Any:
        if isinstance(value, dict):
            clean = {}
            for key, item in value.items():
                if any(marker.lower() in key.lower() for marker in self.SENSITIVE_KEYS):
                    continue
                clean[key] = self._sanitize_value(item)
            return clean
        if isinstance(value, list):
            return [self._sanitize_value(item) for item in value]
        if isinstance(value, str) and "firebasestorage.googleapis.com" in value:
            return value.split("?", 1)[0]
        return value

    def _first_text(self, data: dict[str, Any], *keys: str) -> str | None:
        for key in keys:
            value = data.get(key)
            text = self._join_values(value)
            if text:
                return text
        return None

    def _join_values(self, value: Any) -> str | None:
        if value in (None, "", "null"):
            return None
        if isinstance(value, list):
            text = ", ".join(str(item) for item in value if item not in (None, ""))
            return text or None
        if isinstance(value, dict):
            for key in ("name_en", "city_name_en", "governorate_name_en", "name", "title", "value"):
                if value.get(key):
                    return str(value[key])
            return json.dumps(value, ensure_ascii=False)
        return str(value)

    def _access_token(self) -> str:
        service_account = self._service_account()
        now = int(time.time())
        claim = {
            "iss": service_account["client_email"],
            "scope": "https://www.googleapis.com/auth/datastore",
            "aud": service_account["token_uri"],
            "iat": now,
            "exp": now + 3600,
        }
        signing_input = f"{self._b64_json({'alg': 'RS256', 'typ': 'JWT'})}.{self._b64_json(claim)}".encode()
        key = serialization.load_pem_private_key(service_account["private_key"].encode(), password=None)
        signature = key.sign(signing_input, padding.PKCS1v15(), hashes.SHA256())
        assertion = f"{signing_input.decode()}.{self._b64(signature)}"
        response = self.client.post(
            service_account["token_uri"],
            data={
                "grant_type": "urn:ietf:params:oauth:grant-type:jwt-bearer",
                "assertion": assertion,
            },
        )
        response.raise_for_status()
        return response.json()["access_token"]

    def _service_account(self) -> dict[str, Any]:
        with zipfile.ZipFile(self.apk_path) as package:
            if self.apk_path.suffix.lower() == ".apk":
                return json.loads(package.read(self.SA_ASSET_PATH))
            for name in package.namelist():
                if name.endswith(".apk") and "bookshuffle" in name.lower():
                    with zipfile.ZipFile(io.BytesIO(package.read(name))) as apk:
                        return json.loads(apk.read(self.SA_ASSET_PATH))
        raise FileNotFoundError(f"No Book Shuffle Firebase credential found in {self.apk_path}")

    def _headers(self) -> dict[str, str]:
        if not self.access_token:
            raise RuntimeError("Firestore access token has not been initialized")
        return {"Authorization": f"Bearer {self.access_token}"}

    def _b64_json(self, value: dict[str, Any]) -> str:
        return self._b64(json.dumps(value, separators=(",", ":")).encode())

    def _b64(self, value: bytes) -> str:
        return base64.urlsafe_b64encode(value).rstrip(b"=").decode()


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Book Shuffle Firestore crawler")
    parser.add_argument("--apk", default="", help="Path to Book Shuffle APK or XAPK")
    parser.add_argument("--collection", default="auto", help="Firestore collection group to query")
    parser.add_argument("--limit", type=int, default=100, help="Maximum listings to save")
    parser.add_argument("--page-size", type=int, default=50, help="Firestore query page size")
    parser.add_argument("--limit-pages", type=int, default=None)
    parser.add_argument("--limit-items", type=int, default=None)
    parser.add_argument("--query", type=str, default=None)
    args, _ = parser.parse_known_args()

    BookShuffleSpider(
        apk_path=args.apk,
        collection_group=args.collection,
        limit=args.limit,
        page_size=args.page_size,
        limit_pages=args.limit_pages,
        limit_items=args.limit_items,
        query=args.query,
    ).run()
