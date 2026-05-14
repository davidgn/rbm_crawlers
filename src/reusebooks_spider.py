import argparse
import json
import time
from typing import Any

import httpx

from base_spider import BaseSpider
from models import BookListing


class ReuseBooksSpider(BaseSpider):
    """
    ReuseBooks public app API spider.

    The API surface was recovered from the Android package com.reusebooks
    version 3.1.20:
      - base URL: https://admin.reusebooks.in
      - API endpoint: POST /secure/api
      - listing/facet method: getFacets

    The app sends listing requests as an RPC-style JSON envelope.  The
    location and userLocation objects are required; top-level latitude and
    longitude produce an encrypted API error.
    """

    API_BASE = "https://admin.reusebooks.in"
    API_PATH = "/secure/api"
    DEFAULT_RADIUS_METERS = 50_000
    DEFAULT_CENTERS = [
        ("Delhi NCR", 28.6139, 77.2090),
        ("Mumbai", 19.0760, 72.8777),
        ("Bengaluru", 12.9716, 77.5946),
        ("Hyderabad", 17.3850, 78.4867),
        ("Chennai", 13.0827, 80.2707),
        ("Kolkata", 22.5726, 88.3639),
        ("Pune", 18.5204, 73.8567),
        ("Ahmedabad", 23.0225, 72.5714),
        ("Jaipur", 26.9124, 75.7873),
        ("Lucknow", 26.8467, 80.9462),
    ]

    CATEGORY_NAMES = {
        "660d1bd81591768b428b28a7": "School",
        "66307c20aa29db766e8cd6df": "College",
        "66307c39aa29db766e8cd728": "Entrance Exam",
        "66307c7eaa29db766e8cd785": "Govt. Jobs",
        "65dde9eedcb1e75012c1fd12": "Other Books",
    }

    def __init__(
        self,
        limit_centers: int = 1,
        radius_meters: int = DEFAULT_RADIUS_METERS,
        delay: float = 0.5,
    ):
        super().__init__(platform_name="ReuseBooks", territory="India")
        self.limit_centers = limit_centers
        self.radius_meters = radius_meters
        self.delay = delay
        self.client = httpx.Client(
            base_url=self.API_BASE,
            timeout=60.0,
            headers={
                "Accept": "application/json",
                "Content-Type": "application/json",
                "Content-Language": "en",
                "X-Country-Code": "IN",
                "User-Agent": self.user_agents[0],
            },
        )

    def run(self):
        self.logger.info(
            "Starting ReuseBooks API harvest. centers=%s radius=%sm",
            self.limit_centers,
            self.radius_meters,
        )

        seen: set[str] = set()
        try:
            for center_name, latitude, longitude in self.DEFAULT_CENTERS[: self.limit_centers]:
                data = self._fetch_facets(center_name, latitude, longitude)
                if not data:
                    continue

                self._update_category_map(data)
                listings = self._books_data(data)
                self.logger.info("%s returned %s listings.", center_name, len(listings))

                for listing in listings:
                    book_id = listing.get("_id")
                    if not book_id or book_id in seen:
                        continue
                    seen.add(book_id)
                    self._save_listing(book_id, listing)

                time.sleep(self.delay)
        finally:
            self.client.close()

        self.logger.info("Finished ReuseBooks harvest. Saved %s items.", self.items_scraped)

    def _fetch_facets(self, center_name: str, latitude: float, longitude: float) -> dict[str, Any] | None:
        point = {"latitude": latitude, "longitude": longitude}
        payload = {
            "data": {
                "apiName": "getFacets",
                "data": {
                    "page": 1,
                    "records": 150,
                    "location": point,
                    "userLocation": point,
                    "radius": self.radius_meters,
                    "state": None,
                    "city": None,
                },
            },
            "debug": True,
        }

        try:
            response = self.client.post(self.API_PATH, json=payload)
            response.raise_for_status()
            raw = response.json()
        except Exception as e:
            self.logger.error("getFacets failed for %s: %s", center_name, e)
            return None

        self.cache_html(
            f"getfacets_{self._slug(center_name)}",
            json.dumps(raw, ensure_ascii=False, indent=2),
            url=f"{self.API_BASE}{self.API_PATH}",
        )

        data = raw.get("response")
        if not isinstance(data, dict):
            self.logger.warning("Unexpected getFacets response for %s: %s", center_name, raw.keys())
            return None
        if data.get("status") != "success":
            self.logger.warning("getFacets returned non-success for %s: %s", center_name, data)
            return None
        return data

    def _update_category_map(self, data: dict[str, Any]):
        for facet in self._facet_groups(data):
            categories = facet.get("category")
            if not isinstance(categories, list):
                continue
            for category in categories:
                if isinstance(category, dict) and category.get("_id") and category.get("name"):
                    self.CATEGORY_NAMES[str(category["_id"])] = str(category["name"])

    def _books_data(self, data: dict[str, Any]) -> list[dict[str, Any]]:
        books = data.get("booksData")
        if isinstance(books, list):
            return [b for b in books if isinstance(b, dict)]
        for facet in self._facet_groups(data):
            books = facet.get("booksData")
            if isinstance(books, list):
                return [b for b in books if isinstance(b, dict)]
        return []

    def _facet_groups(self, data: dict[str, Any]) -> list[dict[str, Any]]:
        groups = data.get("data")
        if not isinstance(groups, list):
            return []
        return [g for g in groups if isinstance(g, dict)]

    def _save_listing(self, book_id: str, source: dict[str, Any]):
        title = source.get("title") or "Untitled ReuseBooks listing"
        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            seller_id=self._seller_id(source),
            title=title,
            author=source.get("author"),
            isbn=source.get("isbn"),
            publisher=source.get("publisher"),
            publication_year=self._string_or_none(source.get("publicationDate")),
            pages=self._string_or_none(source.get("pages")),
            category=self._category(source),
            condition=source.get("bookCondition"),
            price=self._price(source),
            listing_url=f"{self.API_BASE}{self.API_PATH}#getFacets/{book_id}",
            seller_comments=self._seller_comments(source),
        )
        self.save_item(item)

    def _category(self, source: dict[str, Any]) -> str | None:
        category = source.get("category")
        if category is None:
            return None
        category_id = str(category)
        return self.CATEGORY_NAMES.get(category_id, category_id)

    def _seller_id(self, source: dict[str, Any]) -> str | None:
        images = source.get("images")
        if not isinstance(images, list):
            return None
        for image in images:
            if isinstance(image, dict) and image.get("user"):
                return str(image["user"])
        return None

    def _price(self, source: dict[str, Any]) -> str | None:
        list_as = source.get("listAs")
        if list_as == "free":
            return "Free"
        price = source.get("price")
        if price in (None, ""):
            return None
        return f"{price} INR"

    def _seller_comments(self, source: dict[str, Any]) -> str | None:
        parts: list[str] = []
        for key in ("description", "deliveryType", "noOfBooks", "publishedAt", "createdAt"):
            value = source.get(key)
            if value not in (None, ""):
                parts.append(f"{key}={value}")

        address = self._address(source.get("address"))
        if address:
            parts.append(f"address={address}")

        distance = source.get("distance") or source.get("calculatedDistance")
        if isinstance(distance, (int, float)):
            parts.append(f"distanceMeters={round(distance)}")

        return "; ".join(parts) if parts else None

    def _address(self, value: Any) -> str | None:
        if isinstance(value, str):
            return value
        if not isinstance(value, dict):
            return None
        pieces = [value.get("name"), value.get("address"), value.get("city"), value.get("state")]
        clean = [str(piece) for piece in pieces if piece not in (None, "")]
        return " | ".join(clean) if clean else None

    def _string_or_none(self, value: Any) -> str | None:
        if value in (None, ""):
            return None
        return str(value)

    def _slug(self, value: str) -> str:
        return "".join(ch.lower() if ch.isalnum() else "_" for ch in value).strip("_")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="ReuseBooks public app API spider")
    parser.add_argument("--limit", type=int, default=1, help="Maximum default city centers to query")
    parser.add_argument("--radius", type=int, default=ReuseBooksSpider.DEFAULT_RADIUS_METERS, help="Search radius in meters")
    parser.add_argument("--delay", type=float, default=0.5, help="Delay between center requests")
    args = parser.parse_args()

    ReuseBooksSpider(
        limit_centers=args.limit,
        radius_meters=args.radius,
        delay=args.delay,
    ).run()
