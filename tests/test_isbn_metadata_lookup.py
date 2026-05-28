import sys
from pathlib import Path

import httpx


ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
sys.path.insert(0, str(SRC))

from isbn_metadata_lookup import (  # noqa: E402
    IsbnMetadata,
    lookup_isbn,
    merge_google_books,
    merge_openlibrary,
)


def test_merge_openlibrary_populates_metadata():
    metadata = IsbnMetadata(isbn="9780140449136")

    merge_openlibrary(
        metadata,
        {
            "title": "The Odyssey",
            "authors": [{"name": "Homer"}],
            "publishers": [{"name": "Penguin Classics"}],
            "publish_date": "2003",
            "subjects": [{"name": "Epic poetry"}],
            "cover": {"medium": "https://covers.openlibrary.org/example.jpg"},
            "key": "/books/OL123M",
        },
    )

    assert metadata.title == "The Odyssey"
    assert metadata.authors == ["Homer"]
    assert metadata.publisher == "Penguin Classics"
    assert metadata.category == "Epic poetry"
    assert metadata.source_ids["openlibrary"] == "/books/OL123M"


def test_merge_google_books_fills_missing_fields_only():
    metadata = IsbnMetadata(isbn="9780140449136", title="Existing Title")

    merge_google_books(
        metadata,
        {
            "id": "google-id",
            "volumeInfo": {
                "title": "Google Title",
                "authors": ["Homer"],
                "publisher": "Penguin",
                "publishedDate": "2003-01-30",
                "categories": ["Classics"],
                "imageLinks": {"thumbnail": "https://books.google/example.jpg"},
            },
            "saleInfo": {"retailPrice": {"amount": 12.99, "currencyCode": "USD"}},
        },
    )

    assert metadata.title == "Existing Title"
    assert metadata.authors == ["Homer"]
    assert metadata.publisher == "Penguin"
    assert metadata.source_ids["google_books"] == "google-id"
    assert metadata.source_ids["google_books_retail_price"] == "12.99 USD"


def test_lookup_isbn_keeps_partial_metadata_when_fallback_fails():
    def handler(request):
        if request.url.host == "openlibrary.org":
            return httpx.Response(
                200,
                json={
                    "ISBN:9780140449136": {
                        "title": "The Odyssey",
                        "authors": [{"name": "Homer"}],
                    }
                },
            )
        return httpx.Response(429, json={"error": "rate limited"})

    client = httpx.Client(transport=httpx.MockTransport(handler))

    metadata = lookup_isbn(client, "9780140449136")

    assert metadata.title == "The Odyssey"
    assert metadata.authors == ["Homer"]
    assert "google_books" in metadata.source_errors
