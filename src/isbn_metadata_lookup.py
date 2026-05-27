#!/usr/bin/env python3
"""Lookup canonical book metadata for ISBNs.

Uses the direct ISBN endpoints surfaced during external repo intake:
OpenLibrary Books API first, then Google Books as a fallback/enrichment source.
"""

from __future__ import annotations

import argparse
import json
from dataclasses import asdict, dataclass, field
from typing import Any

import httpx

from isbn_utils import normalize_isbn


HEADERS = {
    "Accept": "application/json",
    "User-Agent": "rbm-isbn-metadata-lookup/1.0 (contact: rbm-project)",
}


@dataclass
class IsbnMetadata:
    isbn: str
    title: str | None = None
    authors: list[str] = field(default_factory=list)
    publisher: str | None = None
    publication_date: str | None = None
    category: str | None = None
    image_url: str | None = None
    source_ids: dict[str, str] = field(default_factory=dict)
    source_errors: dict[str, str] = field(default_factory=dict)


def lookup_isbn(client: httpx.Client, value: str) -> IsbnMetadata:
    isbn = normalize_isbn(value)
    if not isbn:
        raise ValueError(f"invalid ISBN: {value!r}")
    metadata = IsbnMetadata(isbn=isbn)
    try:
        merge_openlibrary(metadata, fetch_openlibrary(client, isbn))
    except Exception as exc:
        metadata.source_errors["openlibrary"] = f"{type(exc).__name__}: {exc}"
    try:
        merge_google_books(metadata, fetch_google_books(client, isbn))
    except Exception as exc:
        metadata.source_errors["google_books"] = f"{type(exc).__name__}: {exc}"
    return metadata


def fetch_openlibrary(client: httpx.Client, isbn: str) -> dict[str, Any] | None:
    response = client.get(
        "https://openlibrary.org/api/books",
        params={"bibkeys": f"ISBN:{isbn}", "format": "json", "jscmd": "data"},
        headers=HEADERS,
    )
    response.raise_for_status()
    return response.json().get(f"ISBN:{isbn}")


def fetch_google_books(client: httpx.Client, isbn: str) -> dict[str, Any] | None:
    response = client.get(
        "https://www.googleapis.com/books/v1/volumes",
        params={"q": f"isbn:{isbn}"},
        headers=HEADERS,
    )
    response.raise_for_status()
    items = response.json().get("items") or []
    return items[0] if items else None


def merge_openlibrary(metadata: IsbnMetadata, payload: dict[str, Any] | None) -> None:
    if not payload:
        return
    metadata.title = metadata.title or payload.get("title")
    metadata.authors = metadata.authors or names(payload.get("authors"))
    metadata.publisher = metadata.publisher or first_name(payload.get("publishers"))
    metadata.publication_date = metadata.publication_date or payload.get("publish_date")
    metadata.category = metadata.category or first_name(payload.get("subjects"))
    cover = payload.get("cover") or {}
    metadata.image_url = metadata.image_url or cover.get("medium") or cover.get("large")
    key = payload.get("key")
    if key:
        metadata.source_ids["openlibrary"] = key


def merge_google_books(metadata: IsbnMetadata, payload: dict[str, Any] | None) -> None:
    if not payload:
        return
    volume = payload.get("volumeInfo") or {}
    sale = payload.get("saleInfo") or {}
    metadata.title = metadata.title or volume.get("title")
    metadata.authors = metadata.authors or list(volume.get("authors") or [])
    metadata.publisher = metadata.publisher or volume.get("publisher")
    metadata.publication_date = metadata.publication_date or volume.get("publishedDate")
    categories = volume.get("categories") or []
    metadata.category = metadata.category or (categories[0] if categories else None)
    images = volume.get("imageLinks") or {}
    metadata.image_url = metadata.image_url or images.get("thumbnail") or images.get("smallThumbnail")
    google_id = payload.get("id")
    if google_id:
        metadata.source_ids["google_books"] = google_id
    retail_price = sale.get("retailPrice") or {}
    if retail_price.get("amount") is not None and retail_price.get("currencyCode"):
        metadata.source_ids["google_books_retail_price"] = (
            f"{retail_price['amount']} {retail_price['currencyCode']}"
        )


def names(values: Any) -> list[str]:
    if not isinstance(values, list):
        return []
    result = []
    for value in values:
        if isinstance(value, dict) and value.get("name"):
            result.append(value["name"])
        elif isinstance(value, str):
            result.append(value)
    return result


def first_name(values: Any) -> str | None:
    found = names(values)
    return found[0] if found else None


def main() -> int:
    parser = argparse.ArgumentParser(description="Lookup ISBN metadata via OpenLibrary and Google Books")
    parser.add_argument("isbn", nargs="+")
    parser.add_argument("--timeout", type=float, default=20.0)
    args = parser.parse_args()

    client = httpx.Client(timeout=httpx.Timeout(args.timeout), follow_redirects=True)
    try:
        for value in args.isbn:
            try:
                metadata = lookup_isbn(client, value)
                print(json.dumps(asdict(metadata), ensure_ascii=False))
            except Exception as exc:
                print(json.dumps({"isbn": value, "error": f"{type(exc).__name__}: {exc}"}))
    finally:
        client.close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
