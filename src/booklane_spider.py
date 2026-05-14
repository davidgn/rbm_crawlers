"""
BookLane spider — India used-book marketplace app.

API: https://booklaneapp.com/api  (Laravel backend)
Auth: Firebase Google Sign-In JWT required for all book endpoints.
      Anonymous auth disabled; no email/password path.

To use the authenticated endpoints, provide a Firebase ID token via
--token or BOOKLANE_TOKEN env var. Obtain one by:
  1. Sign in to the BookLane mobile app with a Google account.
  2. Capture the Authorization header from any authenticated API call
     (e.g. via mitmproxy or adb logcat).

Without a token only platform stats are retrievable.

Firebase project: old-book-seller-f1250
API key (Android): AIzaSyBicRjh51ZuNAipgfsIyHyf60Orgf9htcU
Public endpoint: GET /api/landing-stats -> {"totalBooks":N,"totalUsers":N}
Book endpoints (auth required):
  GET /api/explore/books?page=N
  GET /api/books/search/name?q=QUERY
  GET /api/categories/books?category_id=N
  GET /api/bookstores
"""

import argparse
import os
import sys
import httpx
import json
import logging
from base_spider import BaseSpider
from models import BookListing

logging.basicConfig(level=logging.INFO, format="%(asctime)s [%(levelname)s] %(name)s: %(message)s")

BASE_URL = "https://booklaneapp.com/api"
STATS_URL = f"{BASE_URL}/landing-stats"
EXPLORE_URL = f"{BASE_URL}/explore/books"


class BookLaneSpider(BaseSpider):
    def __init__(self, token: str = "", limit_pages: int = 50):
        super().__init__(platform_name="BookLane", territory="India")
        self.token = token
        self.limit_pages = limit_pages

    def _headers(self) -> dict:
        h = {"Accept": "application/json"}
        if self.token:
            h["Authorization"] = f"Bearer {self.token}"
        return h

    def run(self):
        with httpx.Client(headers=self._headers(), timeout=30) as client:
            # Always log platform stats
            try:
                stats = client.get(STATS_URL).json()
                self.logger.info(
                    "BookLane stats: %d books, %d users",
                    stats.get("totalBooks", 0),
                    stats.get("totalUsers", 0),
                )
            except Exception as e:
                self.logger.warning("Could not fetch stats: %s", e)

            if not self.token:
                self.logger.error(
                    "No auth token — all book listing endpoints return 401. "
                    "Provide --token or set BOOKLANE_TOKEN. Spider cannot proceed."
                )
                return

            for page in range(1, self.limit_pages + 1):
                try:
                    r = client.get(EXPLORE_URL, params={"page": page})
                except Exception as e:
                    self.logger.error("Request failed page %d: %s", page, e)
                    break

                if r.status_code == 401:
                    self.logger.error("401 Unauthenticated — token expired or invalid.")
                    break
                if r.status_code != 200:
                    self.logger.warning("HTTP %d on page %d", r.status_code, page)
                    break

                data = r.json()
                books = data.get("data") or data.get("books") or []
                if not books:
                    self.logger.info("No more books at page %d", page)
                    break

                for book in books:
                    self.save_item(BookListing(
                        territory=self.territory,
                        platform=self.platform_name,
                        title=book.get("title") or book.get("name", ""),
                        price=str(book.get("price", "")),
                        isbn=book.get("isbn") or book.get("isbn13") or "",
                        author=book.get("author", ""),
                        condition=book.get("condition", ""),
                        listing_url=f"https://booklaneapp.com/books/{book.get('id', '')}",
                    ))

                self.logger.info("Page %d: %d books (total %d)", page, len(books), self.items_scraped)

                # Check if last page
                last = data.get("last_page") or data.get("meta", {}).get("last_page")
                if last and page >= last:
                    break

        self.logger.info("Done: %d listings", self.items_scraped)


def main():
    parser = argparse.ArgumentParser(description="BookLane spider (auth-gated API)")
    parser.add_argument("--token", default=os.environ.get("BOOKLANE_TOKEN", ""),
                        help="Firebase Bearer token (or set BOOKLANE_TOKEN env var)")
    parser.add_argument("--limit", type=int, default=50, help="Max pages to fetch")
    args = parser.parse_args()
    BookLaneSpider(token=args.token, limit_pages=args.limit).run()


if __name__ == "__main__":
    main()
