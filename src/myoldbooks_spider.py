"""
MyOldBooks spider — India used-book classifieds app (myoldbooks.in).

Backend: Firebase Firestore, project "selling-app-cc177".
Auth: None required — Firestore security rules allow unauthenticated reads.

Collection: Ads
Query: status=="1" AND blockStatus=="0" AND soldStatus=="0"
       ORDER BY postDate DESC
Pagination: cursor-based via runQuery startAt (postDate value of last doc).

No `title` field in the document schema; title is reconstructed from
category + subcategory labels (e.g. "COLLEGE | MDU | BCA | Semester 4").
~4,600 active listings as of May 2026.
"""

import argparse
import logging
from typing import Any

import httpx

from base_spider import BaseSpider
from models import BookListing

logging.basicConfig(level=logging.INFO, format="%(asctime)s [%(levelname)s] %(name)s: %(message)s")

PROJECT_ID = "selling-app-cc177"
FIRESTORE_BASE = (
    f"https://firestore.googleapis.com/v1/projects/{PROJECT_ID}"
    "/databases/(default)/documents"
)
PAGE_SIZE = 100


class MyOldBooksSpider(BaseSpider):
    def __init__(self, page_size: int = PAGE_SIZE):
        super().__init__(platform_name="MyOldBooks", territory="India")
        self.page_size = page_size

    def run(self):
        with httpx.Client(timeout=60) as client:
            cursor: str | None = None
            page = 0
            while True:
                page += 1
                docs = self._fetch_page(client, cursor)
                if not docs:
                    break
                for doc in docs:
                    listing = self._listing_from_doc(doc)
                    if listing:
                        self.save_item(listing)
                self.logger.info("Page %d: %d docs (total %d)", page, len(docs), self.items_scraped)
                if len(docs) < self.page_size:
                    break
                cursor = doc["fields"]["postDate"]["stringValue"]  # type: ignore[index]

        self.logger.info("Done: %d listings", self.items_scraped)

    def _fetch_page(self, client: httpx.Client, cursor: str | None) -> list[dict[str, Any]]:
        query: dict[str, Any] = {
            "structuredQuery": {
                "from": [{"collectionId": "Ads"}],
                "where": {
                    "compositeFilter": {
                        "op": "AND",
                        "filters": [
                            {"fieldFilter": {"field": {"fieldPath": "status"}, "op": "EQUAL", "value": {"stringValue": "1"}}},
                            {"fieldFilter": {"field": {"fieldPath": "blockStatus"}, "op": "EQUAL", "value": {"stringValue": "0"}}},
                            {"fieldFilter": {"field": {"fieldPath": "soldStatus"}, "op": "EQUAL", "value": {"stringValue": "0"}}},
                        ],
                    }
                },
                "orderBy": [{"field": {"fieldPath": "postDate"}, "direction": "DESCENDING"}],
                "limit": self.page_size,
            }
        }
        if cursor:
            query["structuredQuery"]["startAt"] = {
                "values": [{"stringValue": cursor}],
                "before": False,
            }
        try:
            r = client.post(f"{FIRESTORE_BASE}:runQuery", json=query)
            r.raise_for_status()
        except Exception as e:
            self.logger.error("Request failed: %s", e)
            return []
        rows = r.json()
        return [row["document"] for row in rows if isinstance(row, dict) and isinstance(row.get("document"), dict)]

    def _listing_from_doc(self, doc: dict[str, Any]) -> BookListing | None:
        fields = doc.get("fields", {})

        def sv(key: str) -> str:
            return fields.get(key, {}).get("stringValue", "").strip()

        ad_id = doc.get("name", "").rsplit("/", 1)[-1]
        category = sv("category")
        subcat1 = sv("subcat1")
        subcat2 = sv("subcat2")
        subcat3 = sv("subcat3")

        title_parts = [p for p in [category, subcat1, subcat2, subcat3] if p]
        title = " | ".join(title_parts) if title_parts else None
        if not title:
            return None

        price_raw = sv("price")
        price = f"₹{price_raw}" if price_raw else None

        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            seller_id=sv("userId") or None,
            title=title,
            category=category or None,
            price=price,
            listing_url=f"https://myoldbooks.in/ad/{ad_id}",
            seller_comments=sv("location") or None,
        )


def main():
    parser = argparse.ArgumentParser(description="MyOldBooks Firestore spider (open read)")
    parser.add_argument("--page-size", type=int, default=PAGE_SIZE, help="Docs per Firestore page")
    args = parser.parse_args()
    MyOldBooksSpider(page_size=args.page_size).run()


if __name__ == "__main__":
    main()
