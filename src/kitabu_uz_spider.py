import argparse
import json
import time
from typing import Any

import httpx

from base_spider import BaseSpider
from models import BookListing


class KitabuUzSpider(BaseSpider):
    """
    Kitabu.uz public API spider.

    The API surface was recovered from the Android Flutter package
    uz.kitabu.uz.kitabu_mobile_codeuz:
      - base URL: https://api.kitabu.uz
      - public list: POST /api/v1/kb/post/public/filter
      - public detail: GET /api/v1/kb/post/public/{postId}

    Cache-first: list and detail JSON payloads are cached before writing a
    normalized BookListing record.
    """

    API_BASE = "https://api.kitabu.uz"
    PUBLIC_FILTER_PATH = "/api/v1/kb/post/public/filter"
    PUBLIC_DETAIL_PATH = "/api/v1/kb/post/public/{post_id}"

    def __init__(
        self,
        limit_pages: int = 20,
        page_size: int = 50,
        include_details: bool = True,
        language: str | None = None,
        delay: float = 0.5,
    ):
        super().__init__(platform_name="Kitabu.uz", territory="Uzbekistan")
        self.limit_pages = limit_pages
        self.page_size = page_size
        self.include_details = include_details
        self.language = language
        self.delay = delay
        self.client = httpx.Client(
            base_url=self.API_BASE,
            timeout=30.0,
            headers={
                "Accept": "application/json",
                "Content-Type": "application/json",
                "User-Agent": self.user_agents[0],
            },
        )

    def run(self):
        self.logger.info(
            "Starting Kitabu.uz API harvest. limit_pages=%s page_size=%s details=%s",
            self.limit_pages,
            self.page_size,
            self.include_details,
        )

        seen: set[str] = set()
        try:
            for page_number in range(self.limit_pages):
                payload = self._filter_payload(page_number)
                page_data = self._post_json(self.PUBLIC_FILTER_PATH, payload)
                if not page_data:
                    self.logger.info("No response data on page %s; stopping.", page_number)
                    break

                page_cache_id = f"page_{page_number:04d}"
                self.cache_html(
                    page_cache_id,
                    json.dumps(page_data, ensure_ascii=False, indent=2),
                    url=f"{self.API_BASE}{self.PUBLIC_FILTER_PATH}",
                )

                content = self._page_content(page_data)
                if not content:
                    self.logger.info("No listings on page %s; stopping.", page_number)
                    break

                self.logger.info("Page %s returned %s listings.", page_number, len(content))
                for summary in content:
                    post_id = summary.get("postId") or summary.get("id")
                    if not post_id or post_id in seen:
                        continue
                    seen.add(post_id)

                    detail = summary
                    if self.include_details:
                        detail = self._fetch_detail(post_id) or summary
                        time.sleep(self.delay)

                    self._save_listing(post_id, summary, detail)

                if self._is_last_page(page_data):
                    self.logger.info("Reached final API page at %s.", page_number)
                    break
                time.sleep(self.delay)
        finally:
            self.client.close()

        self.logger.info("Finished Kitabu.uz harvest. Saved %s items.", self.items_scraped)

    def _filter_payload(self, page_number: int) -> dict[str, Any]:
        payload: dict[str, Any] = {
            "pageNumber": page_number,
            "pageSize": self.page_size,
        }
        if self.language:
            payload["bookLanguage"] = self.language
        return payload

    def _post_json(self, path: str, payload: dict[str, Any]) -> dict[str, Any] | None:
        try:
            response = self.client.post(path, json=payload)
            response.raise_for_status()
            data = response.json()
        except Exception as e:
            self.logger.error("POST %s failed: %s", path, e)
            return None

        if data.get("isError"):
            self.logger.warning("POST %s returned API error: %s", path, data.get("message"))
            return None
        return data

    def _fetch_detail(self, post_id: str) -> dict[str, Any] | None:
        path = self.PUBLIC_DETAIL_PATH.format(post_id=post_id)
        try:
            response = self.client.get(path)
            response.raise_for_status()
            data = response.json()
        except Exception as e:
            self.logger.error("Detail fetch failed for %s: %s", post_id, e)
            return None

        if data.get("isError"):
            self.logger.warning("Detail API error for %s: %s", post_id, data.get("message"))
            return None

        self.cache_html(
            post_id,
            json.dumps(data, ensure_ascii=False, indent=2),
            url=f"{self.API_BASE}{path}",
        )
        return data.get("data") or data

    def _save_listing(
        self,
        post_id: str,
        summary: dict[str, Any],
        detail: dict[str, Any],
    ):
        source = detail if detail else summary
        title = source.get("title") or summary.get("title") or "Untitled Kitabu.uz listing"
        listing_url = f"{self.API_BASE}{self.PUBLIC_DETAIL_PATH.format(post_id=post_id)}"

        category = self._category(source) or summary.get("genreNames")
        condition = source.get("conditionType") or source.get("status") or summary.get("status")
        seller_comments = self._seller_comments(source, summary)

        price = self._format_price(source.get("price", summary.get("price")))
        item = BookListing(
            territory=self.territory,
            platform=self.platform_name,
            seller_id=self._seller_id(source),
            title=title,
            author=source.get("authorName") or summary.get("authorName"),
            language=source.get("bookLanguage"),
            binding=source.get("bookPrintType") or summary.get("printType"),
            category=category,
            condition=condition,
            price=price,
            listing_url=listing_url,
            seller_comments=seller_comments,
        )
        self.save_item(item)

    def _page_content(self, page_data: dict[str, Any]) -> list[dict[str, Any]]:
        data = page_data.get("data")
        if isinstance(data, dict) and isinstance(data.get("content"), list):
            return data["content"]
        if isinstance(data, list):
            return data
        return []

    def _is_last_page(self, page_data: dict[str, Any]) -> bool:
        data = page_data.get("data")
        if not isinstance(data, dict):
            return True
        return bool(data.get("last") or data.get("empty"))

    def _category(self, source: dict[str, Any]) -> str | None:
        genre_list = source.get("genreList")
        if isinstance(genre_list, list):
            names = [g.get("name") for g in genre_list if isinstance(g, dict) and g.get("name")]
            if names:
                return ", ".join(names)
        return source.get("genreNames")

    def _seller_id(self, source: dict[str, Any]) -> str | None:
        profile = source.get("profile")
        if isinstance(profile, dict):
            return profile.get("id")
        return None

    def _seller_comments(self, source: dict[str, Any], summary: dict[str, Any]) -> str | None:
        parts: list[str] = []
        description = source.get("description")
        if description:
            parts.append(f"description={description}")

        region = source.get("regionName") or summary.get("regionName")
        region_short = source.get("regionShort")
        if isinstance(region_short, dict):
            region = region_short.get("name") or region
        if region:
            parts.append(f"region={region}")

        exchange_type = source.get("exchangeType") or summary.get("exchangeType")
        if exchange_type:
            parts.append(f"exchangeType={exchange_type}")

        market_price = source.get("marketPrice")
        if market_price not in (None, ""):
            parts.append(f"marketPrice={self._format_price(market_price)}")

        created_date = source.get("createdDate") or summary.get("createdDate")
        if created_date:
            parts.append(f"createdDate={created_date}")

        return "; ".join(parts) if parts else None

    def _format_price(self, price: Any) -> str | None:
        if price in (None, ""):
            return None
        return f"{price} UZS"


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Kitabu.uz public API cache-first spider")
    parser.add_argument("--limit", type=int, default=20, help="Maximum API pages to fetch")
    parser.add_argument("--page-size", type=int, default=50, help="API page size")
    parser.add_argument(
        "--no-details",
        action="store_true",
        help="Only use list endpoint summaries; skip detail endpoint requests",
    )
    parser.add_argument(
        "--language",
        choices=["EN", "RU", "LATIN", "KIRILL"],
        help="Optional bookLanguage filter accepted by the app API",
    )
    parser.add_argument("--delay", type=float, default=0.5, help="Delay between API requests")
    args = parser.parse_args()

    KitabuUzSpider(
        limit_pages=args.limit,
        page_size=args.page_size,
        include_details=not args.no_details,
        language=args.language,
        delay=args.delay,
    ).run()
