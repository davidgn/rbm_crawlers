#!/usr/bin/env python3
"""Generate manual rare-book valuation links from ISBN/title/author text.

The generated URLs are intended for human review and triage. Some services,
notably viaLibri, publish search-link rules but explicitly restrict automated
searching; this script only emits links.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Any
from urllib.parse import urlencode


ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
SCRIPTS = ROOT / "scripts"
sys.path.insert(0, str(SRC))
sys.path.insert(0, str(SCRIPTS))

from extract_book_text_signals import extract_signals  # noqa: E402
from isbn_utils import normalize_isbn  # noqa: E402


def clean_query(value: str | None) -> str | None:
    if not value:
        return None
    value = " ".join(value.split())
    return value or None


def build_links(
    isbn: str | None = None,
    title: str | None = None,
    author: str | None = None,
    year: int | None = None,
) -> dict[str, str]:
    canonical_isbn = normalize_isbn(isbn) if isbn else None
    title = clean_query(title)
    author = clean_query(author)

    links: dict[str, str] = {}
    if canonical_isbn:
        links["abebooks_isbn"] = "https://www.abebooks.com/servlet/SearchResults?" + urlencode(
            {"isbn": canonical_isbn, "sortby": "17"}
        )
        links["bookfinder_isbn"] = "https://www.bookfinder.com/search/?" + urlencode(
            {"isbn": canonical_isbn, "mode": "isbn", "st": "sr", "ac": "qr"}
        )
        links["biblio_isbn"] = "https://www.biblio.com/search.php?" + urlencode(
            {"isbn": canonical_isbn}
        )
        links["google_books_isbn"] = "https://www.googleapis.com/books/v1/volumes?" + urlencode(
            {"q": f"isbn:{canonical_isbn}"}
        )
        links["open_library_isbn"] = "https://openlibrary.org/api/books?" + urlencode(
            {"bibkeys": f"ISBN:{canonical_isbn}", "format": "json", "jscmd": "data"}
        )

    rare_params = {}
    if title:
        rare_params["title"] = title
    if author:
        rare_params["author"] = author
    if canonical_isbn:
        rare_params["isbn"] = canonical_isbn
    if rare_params:
        links["addall_used_rare"] = "https://www.addall.com/SuperRare/UsedRare.cgi?" + urlencode(
            rare_params
        )

    abebooks_params = {"sortby": "17"}
    if title:
        abebooks_params["tn"] = title
    if author:
        abebooks_params["an"] = author
    if title or author:
        links["abebooks_title_author"] = (
            "https://www.abebooks.com/servlet/SearchResults?" + urlencode(abebooks_params)
        )

    vialibri_params: dict[str, Any] = {"source": "RBM crawler triage"}
    if canonical_isbn:
        vialibri_params["all_text"] = canonical_isbn
    elif title:
        vialibri_params["title"] = title
    if author:
        vialibri_params["author"] = author
    if year:
        vialibri_params["year_min"] = year
        vialibri_params["year_max"] = year
    if len(vialibri_params) > 1:
        links["vialibri_manual_search"] = "https://www.vialibri.net/searches?" + urlencode(
            vialibri_params
        )

    return links


def links_from_text(text: str) -> dict[str, Any]:
    signals = extract_signals(text)
    isbn = signals["isbns"][0] if signals["isbns"] else None
    year = signals["oldest_year"] if signals["needs_manual_review"] else signals["newest_year"]
    return {
        "signals": signals,
        "links": build_links(
            isbn=isbn,
            title=signals.get("title_guess"),
            author=signals.get("author_guess"),
            year=year,
        ),
        "notes": [
            "Links are for human review; do not use viaLibri links for automated searching.",
            "AbeBooks/BookFinder/Biblio/AddALL pages may require normal browser review or rate limiting.",
        ],
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("path", nargs="?", type=Path, help="Text file; stdin is used if omitted")
    parser.add_argument("--isbn")
    parser.add_argument("--title")
    parser.add_argument("--author")
    parser.add_argument("--year", type=int)
    parser.add_argument("--json-out", type=Path)
    args = parser.parse_args()

    if args.isbn or args.title or args.author:
        payload = {
            "signals": {},
            "links": build_links(args.isbn, args.title, args.author, args.year),
            "notes": [
                "Links are for human review; do not use viaLibri links for automated searching.",
            ],
        }
    else:
        text = args.path.read_text(encoding="utf-8") if args.path else sys.stdin.read()
        payload = links_from_text(text)

    output = json.dumps(payload, ensure_ascii=False, indent=2)
    if args.json_out:
        args.json_out.parent.mkdir(parents=True, exist_ok=True)
        args.json_out.write_text(output + "\n", encoding="utf-8")
    else:
        print(output)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
