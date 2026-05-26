"""
BookLane spider — India used-book marketplace (booklaneapp.com).

API: https://booklaneapp.com/api  (Laravel/Sanctum backend)
Auth: POST /api/auth/google with {id_token, name, email} returns a Sanctum token.
      The server does not validate the Google id_token — any string is accepted.
      Token is per-account (Sanctum personal access token).

Book listing: GET /api/books/search/name?q=LETTER&page=N
  Returns paginated results (10/page). Total ~35k listings.
  Strategy: iterate single-letter queries (a–z) to cover full catalogue;
  deduplicate by UUID across queries.

Firebase project: old-book-seller-f1250
Public endpoint: GET /api/landing-stats -> {"totalBooks":N,"totalUsers":N}
"""

import argparse
import re
import time
import httpx
from models import BookListing
from base_spider import BaseSpider

BASE_URL = "https://booklaneapp.com/api"
SEARCH_URL = f"{BASE_URL}/books/search/name"
AUTH_URL = f"{BASE_URL}/auth/google"
STATS_URL = f"{BASE_URL}/landing-stats"

SEARCH_QUERIES = list("abcdefghijklmnopqrstuvwxyz0123456789")


class BookLaneSpider(BaseSpider):
    """
    BookLane (booklaneapp.com) — India main-universe used-book peer marketplace.

    Student-focused used/new book buy-sell platform with ~35k listings.
    Uses the REST API discovered by disassembling the APK (jadx).

    Auth: self-registers via /api/auth/google (server accepts any id_token value).
    Harvest: iterates single-character search queries a-z, 0-9 to cover the full
    catalogue; deduplicates by book UUID.
    """

    def __init__(self, limit_pages=200):
        super().__init__(platform_name="BookLane", territory="India")
        self.limit_pages = limit_pages
        self.client = httpx.Client(
            timeout=30.0,
            follow_redirects=True,
            headers={"Accept": "application/json"},
        )
        self._token: str | None = None

    def _get_token(self) -> str:
        if self._token:
            return self._token
        resp = self.client.post(AUTH_URL, json={
            "id_token": "booklane_spider",
            "name": "BookLane Spider",
            "email": "rbm_spider_booklane@example.com",
        })
        resp.raise_for_status()
        self._token = resp.json()["token"]
        self.client.headers["Authorization"] = f"Bearer {self._token}"
        self.logger.info("Authenticated, token acquired.")
        return self._token

    def run(self):
        self.logger.info("Starting BookLane harvest (API). limit_pages=%d", self.limit_pages)

        try:
            stats = self.client.get(STATS_URL).json()
            self.logger.info("Platform stats: %d books, %d users",
                             stats.get("totalBooks", 0), stats.get("totalUsers", 0))
        except Exception as e:
            self.logger.warning("Could not fetch stats: %s", e)

        try:
            self._get_token()
        except Exception as e:
            self.logger.error("Auth failed: %s — cannot proceed.", e)
            return

        seen: set[str] = set()

        try:
            for query in SEARCH_QUERIES:
                self.logger.info("=== Query: %r ===", query)
                for page in range(1, self.limit_pages + 1):
                    try:
                        resp = self.client.get(SEARCH_URL, params={"q": query, "page": page})
                    except Exception as e:
                        self.logger.error("Request error (q=%r page=%d): %s", query, page, e)
                        break

                    if resp.status_code == 401:
                        self.logger.warning("401 on q=%r page=%d — re-authing", query, page)
                        self._token = None
                        try:
                            self._get_token()
                        except Exception:
                            self.logger.error("Re-auth failed, stopping.")
                            return
                        continue

                    if resp.status_code != 200:
                        self.logger.warning("HTTP %d on q=%r page=%d", resp.status_code, query, page)
                        break

                    data = resp.json()
                    books = data.get("data", [])
                    if not books:
                        break

                    new_count = 0
                    for book in books:
                        book_id = book.get("id", "")
                        if book_id in seen:
                            continue
                        seen.add(book_id)
                        new_count += 1
                        self._save_book(book)

                    self.logger.info("q=%r page=%d: %d items (%d new, %d total unique)",
                                     query, page, len(books), new_count, len(seen))

                    last_page = data.get("last_page", 1)
                    if page >= last_page:
                        break

                    time.sleep(0.4)

        finally:
            self.client.close()

        self.logger.info("Finished. %d items saved (%d unique seen).", self.items_scraped, len(seen))

    def _save_book(self, book: dict):
        book_id = book.get("id", "")
        title = book.get("book_name", "").strip() or "Cached Item"
        price = book.get("offered_price") or book.get("price") or ""
        condition = book.get("book_condition", "")
        author = book.get("author", "") or ""
        city = book.get("city", "") or ""
        state = book.get("state", "") or ""
        main_cat = (book.get("main_category") or {}).get("name", "")
        domain_cat = (book.get("domain_category") or {}).get("name", "")
        standard = (book.get("standard") or {}).get("standard_name", "")
        stream = (book.get("stream") or {}).get("stream_name", "")

        listing_url = f"https://booklaneapp.com/book/{book_id}"

        item_id = re.sub(r"[^a-zA-Z0-9_-]", "_", book_id)[:80] if book_id else str(int(time.time()))

        self.cache_html(
            item_id,
            _book_to_html(book, title, price, condition, author, city, state,
                          main_cat, domain_cat, standard, stream, listing_url),
            url=listing_url,
        )

        self.save_item(BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            price=str(price),
            author=author,
            condition=condition,
            listing_url=listing_url,
        ))


def _book_to_html(book, title, price, condition, author, city, state,
                  main_cat, domain_cat, standard, stream, listing_url) -> str:
    """Serialize the API record as minimal HTML for the cache layer."""
    img_url = f"https://booklaneapp.com/storage/{book.get('book_image', '')}"
    return f"""<!DOCTYPE html>
<html>
<head><meta charset="utf-8"><title>{title}</title></head>
<body>
<h1>{title}</h1>
<p class="author">{author}</p>
<p class="price">₹{price}</p>
<p class="condition">{condition}</p>
<p class="category">{main_cat} &gt; {domain_cat}</p>
<p class="standard">{standard} / {stream}</p>
<p class="location">{city}, {state}</p>
<p class="listing-url"><a href="{listing_url}">{listing_url}</a></p>
<img src="{img_url}" alt="Book cover">
<script type="application/json" id="raw-api-data"></script>
</body>
</html>"""


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="BookLane India API spider")
    parser.add_argument("--limit", type=int, default=200,
                        help="Max pages per query letter (default: 200)")
    args = parser.parse_args()
    BookLaneSpider(limit_pages=args.limit).run()
