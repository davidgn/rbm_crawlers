"""
BookMamu spider — India used/new book marketplace app.

API: https://prodbookmamuapi.azurewebsites.net/api/  (Azure / Node backend)
Auth: Static app-level Bearer JWT (hardcoded in APK, no user auth required).
      Derived from APK reverse engineering (jadx decompilation of classes3.dex).

Endpoint: POST /booklist
Body:  [{"Model":"Books","Page":N,"PageSize":50,"Filter":{"IsApproved":true,"IsSold":false},"Sort":{"CreatedDateTime":-1}}]
Response: {"Books": [...]}  — no total-count field; paginate until len(books) < page_size.

Firebase project: book-bookmamu (Firestore primary store; API is a REST bridge).
"""

import argparse
import httpx
import logging
from base_spider import BaseSpider
from models import BookListing

logging.basicConfig(level=logging.INFO, format="%(asctime)s [%(levelname)s] %(name)s: %(message)s")

BASE_URL = "https://prodbookmamuapi.azurewebsites.net/api/"
BOOKLIST_URL = f"{BASE_URL}booklist"

# Static app-level JWT extracted from APK (payload: {"TheKeyModel":"Book","company":"bookmamu"})
APP_JWT = (
    "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9"
    ".eyJUaGVLZXlNb2RlbCI6IkJvb2siLCJjb21wYW55IjoiYm9va21hbXUifQ"
    ".vVeNWaTut-b-4ikevSeX4eWQxiPkxQ-u58OLhVLDBkg"
)

PAGE_SIZE = 50


class BookMamuSpider(BaseSpider):
    def __init__(self, limit_pages: int = 200):
        super().__init__(platform_name="BookMamu", territory="India")
        self.limit_pages = limit_pages

    def _headers(self) -> dict:
        return {
            "Authorization": f"Bearer {APP_JWT}",
            "Content-Type": "application/json",
        }

    def run(self):
        with httpx.Client(headers=self._headers(), timeout=30) as client:
            for page in range(1, self.limit_pages + 1):
                payload = [{
                    "Model": "Books",
                    "Page": page,
                    "PageSize": PAGE_SIZE,
                    "Filter": {"IsApproved": True, "IsSold": False},
                    "Sort": {"CreatedDateTime": -1},
                }]
                try:
                    r = client.post(BOOKLIST_URL, json=payload)
                except Exception as e:
                    self.logger.error("Request failed page %d: %s", page, e)
                    break

                if r.status_code == 401:
                    self.logger.error("401 — JWT rejected (token may have been rotated).")
                    break
                if r.status_code != 200:
                    self.logger.warning("HTTP %d on page %d", r.status_code, page)
                    break

                books = r.json().get("Books", [])
                if not books:
                    self.logger.info("No more books at page %d", page)
                    break

                for book in books:
                    category = book.get("Category") or {}
                    addr = book.get("Address") or {}
                    city = addr.get("City", "")
                    state = addr.get("State", "")
                    location = ", ".join(filter(None, [city, state]))
                    condition = book.get("Condition") or ("New" if book.get("IsNew") else "")

                    self.save_item(BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=book.get("Title", ""),
                        author=book.get("Author", "") or None,
                        isbn=book.get("ISBN") or None,
                        price=str(book.get("SellingPrice", "")),
                        condition=condition or None,
                        listing_url=f"https://bookmamu.in/book/{book.get('_id', '')}",
                    ))

                self.logger.info("Page %d: %d books (total %d)", page, len(books), self.items_scraped)

                if len(books) < PAGE_SIZE:
                    self.logger.info("Last page reached at page %d", page)
                    break

        self.logger.info("Done: %d listings", self.items_scraped)


def main():
    parser = argparse.ArgumentParser(description="BookMamu spider (open API, static JWT)")
    parser.add_argument("--limit", type=int, default=200, help="Max pages to fetch")
    args = parser.parse_args()
    BookMamuSpider(limit_pages=args.limit).run()


if __name__ == "__main__":
    main()
