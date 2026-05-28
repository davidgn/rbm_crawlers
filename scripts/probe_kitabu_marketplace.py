#!/usr/bin/env python3
"""Probe the public Kitabu.uz used/free book marketplace API.

This is intentionally a bounded probe, not a full spider. The APK exposes
unauthenticated public listing endpoints, but detail responses can include
seller phone numbers. This probe normalizes useful marketplace fields and
redacts contact/profile payloads by default.
"""

from __future__ import annotations

import argparse
import json
import time
from dataclasses import asdict, dataclass
from pathlib import Path
from typing import Any

import httpx


BASE_URL = "https://api.kitabu.uz"
FILTER_URL = f"{BASE_URL}/api/v1/kb/post/public/filter"
DETAIL_URL = f"{BASE_URL}/api/v1/kb/post/public/{{post_id}}"


@dataclass
class KitabuListing:
    source: str
    post_id: str
    title: str
    listing_url: str
    status: str | None = None
    author: str | None = None
    price: float | None = None
    currency: str = "UZS"
    exchange_type: str | None = None
    condition: str | None = None
    print_type: str | None = None
    language: str | None = None
    category: str | None = None
    region: str | None = None
    created_date: str | None = None
    image_url: str | None = None
    description: str | None = None
    market_price: float | None = None


def _none_if_blank(value: Any) -> str | None:
    if value is None:
        return None
    text = str(value).strip()
    return text or None


def _number_or_none(value: Any) -> float | None:
    if value in (None, ""):
        return None
    try:
        return float(value)
    except (TypeError, ValueError):
        return None


def listing_url(post_id: str) -> str:
    return DETAIL_URL.format(post_id=post_id)


def parse_listing_summary(item: dict[str, Any]) -> KitabuListing | None:
    post_id = _none_if_blank(item.get("postId") or item.get("id"))
    title = _none_if_blank(item.get("title"))
    if not post_id or not title:
        return None
    attach = item.get("attach") or {}
    return KitabuListing(
        source="kitabu",
        post_id=post_id,
        title=title,
        listing_url=listing_url(post_id),
        status=_none_if_blank(item.get("status")),
        author=_none_if_blank(item.get("authorName")),
        price=_number_or_none(item.get("price")),
        exchange_type=_none_if_blank(item.get("exchangeType")),
        print_type=_none_if_blank(item.get("printType")),
        category=_none_if_blank(item.get("genreNames")),
        region=_none_if_blank(item.get("regionName")),
        created_date=_none_if_blank(item.get("createdDate")),
        image_url=_none_if_blank(attach.get("url")),
    )


def enrich_from_detail(listing: KitabuListing, payload: dict[str, Any]) -> KitabuListing:
    """Merge public detail fields while excluding profile/contact data."""

    data = payload.get("data") or {}
    listing.description = _none_if_blank(data.get("description"))
    listing.condition = _none_if_blank(data.get("conditionType"))
    listing.language = _none_if_blank(data.get("bookLanguage"))
    listing.print_type = _none_if_blank(data.get("bookPrintType")) or listing.print_type
    listing.market_price = _number_or_none(data.get("marketPrice"))
    if data.get("regionShort"):
        listing.region = _none_if_blank((data.get("regionShort") or {}).get("name")) or listing.region
    if data.get("genreList"):
        listing.category = ", ".join(
            name for name in (_none_if_blank(item.get("name")) for item in data["genreList"]) if name
        ) or listing.category
    if data.get("attachList"):
        first_attach = data["attachList"][0] or {}
        listing.image_url = _none_if_blank(first_attach.get("url")) or listing.image_url
    return listing


def parse_filter_response(payload: dict[str, Any]) -> tuple[list[KitabuListing], dict[str, Any]]:
    data = payload.get("data") or {}
    content = data.get("content") or []
    listings = [listing for item in content if (listing := parse_listing_summary(item))]
    page = {
        "page_number": data.get("number"),
        "page_size": data.get("size"),
        "total_elements": data.get("totalElements"),
        "total_pages": data.get("totalPages"),
        "last": data.get("last"),
    }
    return listings, page


def probe(
    pages: int,
    timeout: float,
    include_details: bool = False,
    sleep_seconds: float = 0.4,
) -> dict[str, Any]:
    listings: list[KitabuListing] = []
    pages_seen: list[dict[str, Any]] = []
    with httpx.Client(timeout=httpx.Timeout(timeout, connect=min(timeout, 8.0))) as client:
        for page in range(pages):
            response = client.post(FILTER_URL, json={"page": page})
            response.raise_for_status()
            page_listings, page_meta = parse_filter_response(response.json())
            pages_seen.append(page_meta)
            if include_details:
                for listing in page_listings:
                    detail = client.get(listing.listing_url)
                    detail.raise_for_status()
                    enrich_from_detail(listing, detail.json())
                    time.sleep(sleep_seconds)
            listings.extend(page_listings)
            if page_meta.get("last"):
                break
            time.sleep(sleep_seconds)
    return {
        "generated_at": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
        "source": "kitabu",
        "endpoint": FILTER_URL,
        "pages": pages_seen,
        "listings": [asdict(listing) for listing in listings],
        "redaction": "profile/contact fields are not retained",
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--pages", type=int, default=1, help="Number of result pages to request")
    parser.add_argument("--timeout", type=float, default=20.0)
    parser.add_argument("--include-details", action="store_true", help="Fetch public detail JSON without retaining profile/contact fields")
    parser.add_argument("--sleep", type=float, default=0.4, help="Delay between requests")
    parser.add_argument("--json-out", type=Path)
    args = parser.parse_args()

    payload = probe(
        pages=max(args.pages, 1),
        timeout=args.timeout,
        include_details=args.include_details,
        sleep_seconds=max(args.sleep, 0.0),
    )
    output = json.dumps(payload, ensure_ascii=False, indent=2)
    if args.json_out:
        args.json_out.parent.mkdir(parents=True, exist_ok=True)
        args.json_out.write_text(output + "\n", encoding="utf-8")
    else:
        print(output)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
