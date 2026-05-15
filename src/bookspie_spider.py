import argparse
import copy
import json
import time
from types import SimpleNamespace
from typing import Any

import httpx

from base_spider import BaseSpider
from isbn_utils import normalize_isbn, isbn_from_text
from models import BookListing


CONFIG = SimpleNamespace(platform_name="BooksPie", territory="India")


class BooksPieSpider(BaseSpider):
    """
    BooksPie old-books API spider.

    The API surface was recovered from the Android package com.sant.bookspie
    version 5.1:
      - base URL: https://api.bookspie.com/api/
      - categories endpoint: GET /api/getCategories
      - old-books endpoint: POST /api/getBooks?page=N

    The public old-books response includes embedded app user records.  Cached
    API pages are pruned before writing so email, phone and push-token fields
    are not retained in the local cache.
    """

    API_BASE = "https://api.bookspie.com/api"

    def __init__(self, max_pages: int = 1, limit_items: int | None = None, delay: float = 0.5):
        super().__init__(platform_name="BooksPie", territory="India")
        self.max_pages = max_pages
        self.limit_items = limit_items
        self.delay = delay
        self.category_names: dict[str, str] = {}
        self.client = httpx.Client(
            base_url=self.API_BASE,
            timeout=60.0,
            follow_redirects=True,
            headers={
                "Accept": "application/json",
                "User-Agent": self.user_agents[0],
            },
        )

    def run(self):
        self.logger.info(
            "Starting BooksPie old-books API harvest. max_pages=%s limit_items=%s",
            self.max_pages,
            self.limit_items,
        )

        seen: set[str] = self._load_existing_ids()
        try:
            self._load_categories()
            page = 1
            while page <= self.max_pages:
                data = self._fetch_books_page(page)
                if not data:
                    break

                listings = self._books_data(data)
                self.logger.info("Page %s returned %s listings.", page, len(listings))
                if not listings:
                    break

                for listing in listings:
                    book_id = self._string_or_none(listing.get("id"))
                    if not book_id or book_id in seen:
                        continue
                    seen.add(book_id)
                    self._save_listing(book_id, listing)
                    if self.limit_items and self.items_scraped >= self.limit_items:
                        self.logger.info("Reached item limit.")
                        return

                if not self._has_next_page(data, page):
                    break
                page += 1
                time.sleep(self.delay)
        finally:
            self.client.close()

        self.logger.info("Finished BooksPie harvest. Saved %s items.", self.items_scraped)

    def _load_existing_ids(self) -> set[str]:
        seen: set[str] = set()
        if not self.output_file.exists():
            return seen
        with open(self.output_file, encoding="utf-8") as fh:
            for line in fh:
                line = line.strip()
                if not line:
                    continue
                try:
                    d = json.loads(line)
                    url = d.get("listing_url", "")
                    book_id = url.rsplit("#", 1)[-1] if "#" in url else ""
                    if book_id:
                        seen.add(book_id)
                except Exception:
                    pass
        self.logger.info("Pre-loaded %d existing IDs from %s", len(seen), self.output_file.name)
        return seen

    def _load_categories(self):
        try:
            response = self.client.get("/getCategories")
            response.raise_for_status()
            raw = response.json()
        except Exception as e:
            self.logger.warning("Category fetch failed; continuing with embedded categories: %s", e)
            return

        categories = raw.get("categories")
        if not isinstance(categories, list):
            return
        for category in categories:
            if not isinstance(category, dict):
                continue
            category_id = self._string_or_none(category.get("id"))
            category_name = self._string_or_none(category.get("category_name"))
            if category_id and category_name:
                self.category_names[category_id] = category_name

        self.cache_html(
            "categories",
            json.dumps(raw, ensure_ascii=False, indent=2),
            url=f"{self.API_BASE}/getCategories",
        )

    def _fetch_books_page(self, page: int) -> dict[str, Any] | None:
        url = f"/getBooks?page={page}"
        try:
            response = self.client.post(url)
            response.raise_for_status()
            raw = response.json()
        except Exception as e:
            self.logger.error("getBooks failed for page %s: %s", page, e)
            return None

        self.cache_html(
            f"getbooks_page_{page}",
            json.dumps(self._sanitized_cache_copy(raw), ensure_ascii=False, indent=2),
            url=f"{self.API_BASE}/getBooks?page={page}",
        )

        if raw.get("success") is not True:
            self.logger.warning("getBooks returned non-success for page %s: %s", page, raw.get("message"))
            return None
        return raw

    def _books_data(self, data: dict[str, Any]) -> list[dict[str, Any]]:
        books = data.get("books")
        if not isinstance(books, dict):
            return []
        listings = books.get("data")
        if not isinstance(listings, list):
            return []
        return [listing for listing in listings if isinstance(listing, dict)]

    def _has_next_page(self, data: dict[str, Any], page: int) -> bool:
        books = data.get("books")
        if not isinstance(books, dict):
            return False
        if books.get("next_page_url"):
            return True
        last_page = books.get("last_page") or data.get("pages")
        return isinstance(last_page, int) and page < last_page

    def _save_listing(self, book_id: str, source: dict[str, Any]):
        title = self._string_or_none(source.get("book_title")) or "Untitled BooksPie listing"
        isbn = self._isbn_from_source(source)
        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            seller_id=self._string_or_none(source.get("user_id")),
            title=title,
            author=self._string_or_none(source.get("author_name")),
            isbn=isbn,
            publisher=self._string_or_none(source.get("book_publisher")),
            edition=self._string_or_none(source.get("book_edition")),
            category=self._category(source),
            price=self._price(source),
            listing_url=f"{self.API_BASE}/getBooks#{book_id}",
            seller_comments=self._seller_comments(source),
        )
        self.save_item(item)

    def _category(self, source: dict[str, Any]) -> str | None:
        category = source.get("category")
        if isinstance(category, dict):
            name = self._string_or_none(category.get("category_name"))
            if name:
                return name

        category_id = self._string_or_none(source.get("category_id"))
        if not category_id:
            return None
        return self.category_names.get(category_id, category_id)

    def _price(self, source: dict[str, Any]) -> str | None:
        selling_price = self._string_or_none(source.get("book_selling_price"))
        list_price = self._string_or_none(source.get("book_price"))
        if selling_price and list_price and selling_price != list_price:
            return f"{selling_price} INR (listed {list_price} INR)"
        if selling_price:
            return f"{selling_price} INR"
        if list_price:
            return f"{list_price} INR"
        return None

    def _seller_comments(self, source: dict[str, Any]) -> str | None:
        parts: list[str] = []
        for key in ("book_description", "location", "created_at", "updated_at"):
            value = self._string_or_none(source.get(key))
            if value:
                parts.append(f"{key}={value}")

        images = source.get("book_images")
        if isinstance(images, list) and images:
            first_image = self._string_or_none(images[0])
            if first_image:
                parts.append(f"image=https://api.bookspie.com/{first_image.lstrip('/')}")

        return "; ".join(parts) if parts else None

    def _sanitized_cache_copy(self, value: Any) -> Any:
        clone = copy.deepcopy(value)
        for listing in self._books_data(clone) if isinstance(clone, dict) else []:
            user = listing.get("user")
            if not isinstance(user, dict):
                continue
            listing["user"] = {
                "id": user.get("id"),
                "name": user.get("name"),
                "is_active": user.get("is_active"),
                "created_at": user.get("created_at"),
                "updated_at": user.get("updated_at"),
            }
        return clone

    def _string_or_none(self, value: Any) -> str | None:
        if value in (None, "", "null"):
            return None
        return str(value)

    def _isbn_from_source(self, source: dict[str, Any]) -> str | None:
        for key in ("isbn", "isbn13", "book_isbn"):
            isbn = normalize_isbn(source.get(key))
            if isbn:
                return isbn
        for key in ("book_description", "book_title"):
            isbn = isbn_from_text(source.get(key))
            if isbn:
                return isbn
        return None


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="BooksPie public old-books API spider")
    parser.add_argument("--pages", type=int, default=1, help="Maximum API pages to query")
    parser.add_argument("--limit", type=int, default=None, help="Maximum listings to save")
    parser.add_argument("--limit-pages", type=int)
    parser.add_argument("--limit-items", type=int)
    parser.add_argument("--delay", type=float, default=0.5, help="Delay between page requests")
    args = parser.parse_args()

    BooksPieSpider(
        max_pages=args.limit_pages or args.pages,
        limit_items=args.limit_items if args.limit_items is not None else args.limit,
        delay=args.delay,
    ).run()
