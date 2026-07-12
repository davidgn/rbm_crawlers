import re
from typing import Any

from bs4 import BeautifulSoup


def extract_isbn(soup: BeautifulSoup) -> str | None:
    """
    Scan a BeautifulSoup document for any ISBN (10 or 13 digits, any separator).

    Strategy (in priority order):
      1. "ISBN" label followed by digits — tolerates ISBN-10, ISBN-13, ISBN13, dashes, spaces
      2. Bare 978/979 prefix numbers (13-digit, any separator)
      3. Bare 10-digit numbers with valid ISBN-10 checksum
      4. Same scans repeated on raw markup (catches numbers in data-* attrs / JS)
    """
    text = soup.get_text(" ", strip=True)
    raw_markup = str(soup)

    # 1. After an explicit ISBN label (covers "ISBN-10", "ISBN-13", "ISBN13", "ISBN :", etc.)
    for match in re.finditer(
        r"(?i)\bISBN(?:[-\s]?1[03])?\b[^0-9Xx]{0,15}([0-9Xx][\d Xx.-]{8,20})",
        text,
    ):
        isbn = normalize_isbn(match.group(1))
        if isbn:
            return isbn

    # 2. Bare 13-digit ISBN-13 with any separators
    for src in (text, raw_markup):
        for match in re.finditer(r"\b97[89][\d][0-9 ._/-]{9,18}\b", src):
            isbn = normalize_isbn(match.group(0))
            if isbn:
                return isbn

    # 3. Bare 10-digit ISBN-10 (after ISBN label already checked above)
    for src in (text, raw_markup):
        for match in re.finditer(r"\b\d{9}[0-9Xx]\b", src):
            raw = re.sub(r"[^0-9Xx]", "", match.group(0)).upper()
            if valid_isbn10(raw):
                return isbn10_to_isbn13(raw)

    return None


def isbn_from_text(text: str | None) -> str | None:
    """Extract ISBN from free-form text only when safely indicated.

    Requires either a visible ISBN-13 prefix (978/979 not preceded by another digit)
    or an explicit 'ISBN' label in the text.  Avoids false positives from arbitrary
    digit sequences in descriptions, locations, or timestamps.
    """
    if not text:
        return None
    t = str(text)
    has_978 = bool(re.search(r"(?<![0-9])97[89]", t))
    has_label = bool(re.search(r"\bISBN\b", t, re.I))
    if not has_978 and not has_label:
        return None
    # After an explicit ISBN label
    for match in re.finditer(
        r"(?i)\bISBN(?:[-\s]?1[03])?\b[^0-9Xx]{0,15}([0-9Xx][\d Xx.\-]{8,20})",
        t,
    ):
        isbn = normalize_isbn(match.group(1))
        if isbn:
            return isbn
    # Bare ISBN-13 with visible 978/979 prefix
    for match in re.finditer(r"(?<![0-9])97[89][\d][\d\- ._]{8,14}", t):
        isbn = normalize_isbn(match.group(0))
        if isbn:
            return isbn
    return None


def isbn_from_url(url: str | None) -> str | None:
    """Extract ISBN from a URL, supporting both ISBN-13 (prefixed by 978/979) and ISBN-10.

    Guards against false positives from numeric product IDs, hex fragment IDs, or
    Unix timestamps that accidentally pass ISBN-10/13 checksums after digit-stripping.
    """
    if not url:
        return None

    # 1. Search for 13-digit ISBN-13 patterns in the URL
    for match in re.finditer(r"(?:^|[^0-9])(97[89][0-9Xx\-_]{10,20})(?:$|[^0-9Xx])", url):
        cand = re.sub(r"[^0-9Xx]", "", match.group(1)).upper()
        if len(cand) == 13 and valid_isbn13(cand):
            return cand

    # 2. Search for 10-digit ISBN-10 patterns in the URL
    for match in re.finditer(r"(?:^|[^0-9])([0-9Xx]{10})(?:$|[^0-9Xx])", url):
        cand = match.group(1).upper()
        if valid_isbn10(cand):
            return isbn10_to_isbn13(cand)

    for match in re.finditer(r"(?:^|[^0-9])([0-9][0-9\-_]{8,15}[0-9Xx])(?:$|[^0-9Xx])", url):
        cand = re.sub(r"[^0-9Xx]", "", match.group(1)).upper()
        if len(cand) == 10 and valid_isbn10(cand):
            return isbn10_to_isbn13(cand)

    return None


def normalize_isbn(value: Any) -> str | None:
    """
    Convert any ISBN string (10 or 13 digits, any separators) to a clean ISBN-13.
    Returns None if no valid ISBN can be extracted.
    """
    if value in (None, ""):
        return None
    raw = re.sub(r"[^0-9Xx]", "", str(value)).upper()
    if len(raw) == 13:
        return raw if valid_isbn13(raw) else None
    if len(raw) == 10:
        return isbn10_to_isbn13(raw) if valid_isbn10(raw) else None

    # For longer blobs, accept only explicit valid ISBN-13 substrings. Avoid
    # converting arbitrary valid-looking ISBN-10 substrings inside invalid EANs.
    for token in re.findall(r"97[89]\d{10}", raw):
        if valid_isbn13(token):
            return token
    return None


def valid_isbn13(isbn: str) -> bool:
    if not re.fullmatch(r"97[89]\d{10}", isbn):
        return False
    total = sum((1 if idx % 2 == 0 else 3) * int(digit) for idx, digit in enumerate(isbn[:12]))
    return (10 - total % 10) % 10 == int(isbn[-1])


def valid_isbn10(isbn: str) -> bool:
    if not re.fullmatch(r"\d{9}[\dX]", isbn):
        return False
    total = sum((10 - idx) * (10 if char == "X" else int(char)) for idx, char in enumerate(isbn))
    return total % 11 == 0


def isbn10_to_isbn13(isbn: str) -> str:
    base = "978" + isbn[:9]
    total = sum((1 if idx % 2 == 0 else 3) * int(digit) for idx, digit in enumerate(base))
    return f"{base}{(10 - total % 10) % 10}"
