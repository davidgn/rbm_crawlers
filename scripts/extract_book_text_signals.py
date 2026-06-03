#!/usr/bin/env python3
"""Extract book-identification signals from OCR text or copied listing text."""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path
from typing import Any


ISBN_PATTERN = re.compile(
    r"(?i)(?:ISBN(?:-1[03])?\s*[:#]?\s*)?"
    r"((?:97[89][\s.-]?)?\d[\d\s.-]{7,20}[\dX])"
)
YEAR_PATTERN = re.compile(r"\b(1[5-9]\d{2}|20[0-2]\d)\b")
EDITION_KEYWORDS = (
    "first edition",
    "1st edition",
    "first printing",
    "1st printing",
    "limited edition",
    "signed",
    "inscribed",
    "advance reader",
    "advanced reader",
    "uncorrected proof",
    "proof copy",
    "arc",
)

BINDING_KEYWORDS = (
    "hardcover",
    "paperback",
    "softcover",
    "cloth",
    "leather",
    "board book",
    "spiral bound",
)

LANGUAGE_KEYWORDS = (
    "english", "spanish", "french", "german", "italian", "portuguese",
    "russian", "chinese", "japanese", "korean", "arabic", "hindi", "bengali",
)


def normalize_isbn(value: str) -> str | None:
    raw = re.sub(r"[^0-9Xx]", "", value).upper()
    if len(raw) in (10, 13):
        return raw
    return None


def extract_isbns(text: str) -> list[str]:
    seen = []
    for match in ISBN_PATTERN.finditer(text):
        isbn = normalize_isbn(match.group(1))
        if isbn and isbn not in seen:
            seen.append(isbn)
    return seen


def extract_years(text: str) -> list[int]:
    years = sorted({int(match.group(1)) for match in YEAR_PATTERN.finditer(text)})
    return years


def extract_edition_flags(text: str) -> list[str]:
    lower = text.lower()
    return [keyword for keyword in EDITION_KEYWORDS if keyword in lower]


def extract_binding(text: str) -> str | None:
    lower = text.lower()
    for keyword in BINDING_KEYWORDS:
        if keyword in lower:
            return keyword.title()
    return None


def extract_language(text: str) -> str | None:
    lower = text.lower()
    # Check for "Language: English" style patterns first
    match = re.search(r"(?i)language\s*[:#]\s*(\w+)", text)
    if match:
        return match.group(1).title()
    # Fallback to keyword matching
    for lang in LANGUAGE_KEYWORDS:
        if re.search(rf"\b{lang}\b", lower):
            return lang.title()
    return None


def extract_publisher(text: str) -> str | None:
    match = re.search(r"(?i)(?:publisher|published by)\s*[:#]\s*(.+)$", text, re.MULTILINE)
    if match:
        return match.group(1).strip()[:100]
    return None


def extract_page_count(text: str) -> int | None:
    match = re.search(r"(?i)(\d+)\s*(?:pages|pp\b|\.p\b)", text)
    if match:
        return int(match.group(1))
    return None


def extract_dimensions(text: str) -> str | None:
    match = re.search(r"(\d+(?:\.\d+)?\s*[x×]\s*\d+(?:\.\d+)?(?:\s*[x×]\s*\d+(?:\.\d+)?)?\s*(?:cm|mm|in|inches))", text, re.I)
    if match:
        return match.group(1).strip()
    return None


def extract_category(text: str) -> str | None:
    match = re.search(r"(?i)(?:category|subject|genre)\s*[:#]\s*(.+)$", text, re.MULTILINE)
    if match:
        return match.group(1).strip()[:100]
    return None


def extract_title_author_guess(text: str) -> dict[str, str | None]:
    lines = [
        re.sub(r"\s+", " ", line).strip()
        for line in text.splitlines()
        if len(line.strip()) > 3 and not re.search(r"(?i)\bISBN\b", line)
    ]
    title = lines[0][:160] if lines else None
    author = None
    for line in lines[1:6]:
        byline = re.search(r"(?i)\bby\s+(.+)$", line)
        if byline:
            author = byline.group(1)[:120].strip()
            break
        if author is None and len(line) < 80:
            author = line[:120]
            break
    return {"title_guess": title, "author_guess": author}


def extract_signals(text: str) -> dict[str, Any]:
    years = extract_years(text)
    payload: dict[str, Any] = {
        "isbns": extract_isbns(text),
        "years": years,
        "oldest_year": years[0] if years else None,
        "newest_year": years[-1] if years else None,
        "edition_flags": extract_edition_flags(text),
        "binding": extract_binding(text),
        "language": extract_language(text),
        "publisher": extract_publisher(text),
        "page_count": extract_page_count(text),
        "dimensions": extract_dimensions(text),
        "category": extract_category(text),
    }
    payload.update(extract_title_author_guess(text))
    payload["needs_manual_review"] = bool(payload["edition_flags"]) or (
        payload["oldest_year"] is not None and payload["oldest_year"] < 1970
    )
    return payload


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("path", nargs="?", type=Path, help="Text file; stdin is used if omitted")
    parser.add_argument("--json-out", type=Path)
    args = parser.parse_args()

    text = args.path.read_text(encoding="utf-8") if args.path else sys.stdin.read()
    payload = extract_signals(text)
    output = json.dumps(payload, ensure_ascii=False, indent=2)
    if args.json_out:
        args.json_out.parent.mkdir(parents=True, exist_ok=True)
        args.json_out.write_text(output + "\n", encoding="utf-8")
    else:
        print(output)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
