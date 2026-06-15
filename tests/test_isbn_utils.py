import sys
from pathlib import Path

import pytest
from bs4 import BeautifulSoup

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
sys.path.insert(0, str(SRC))

from isbn_utils import (  # noqa: E402
    extract_isbn,
    isbn10_to_isbn13,
    isbn_from_text,
    isbn_from_url,
    normalize_isbn,
    valid_isbn10,
    valid_isbn13,
)


# ---------------------------------------------------------------------------
# normalize_isbn
# ---------------------------------------------------------------------------


@pytest.mark.parametrize(
    ("value", "expected"),
    [
        (None, None),
        ("", None),
        ("9780140449136", "9780140449136"),
        ("978-0-14-044913-6", "9780140449136"),
        ("9780140449139", None),  # bad checksum
        ("0306406152", "9780306406157"),
        ("0-306-40615-2", "9780306406157"),
        ("0306406151", None),  # bad checksum
        ("043942089X", "9780439420891"),
        ("043942089x", "9780439420891"),  # lowercase x
        (9780140449136, "9780140449136"),  # non-string input
        ("not an isbn", None),
        ("123", None),  # too short
    ],
)
def test_normalize_isbn(value, expected):
    assert normalize_isbn(value) == expected


def test_normalize_isbn_extracts_valid_isbn13_substring_from_longer_blob():
    assert normalize_isbn("xx 9780140449136 yy") == "9780140449136"


def test_normalize_isbn_does_not_convert_isbn10_substring_inside_invalid_ean():
    # 14 digits total; not a valid 13-digit nor 10-digit value, and contains
    # no valid 978/979-prefixed 13-digit substring.
    assert normalize_isbn("12345678901234") is None


# ---------------------------------------------------------------------------
# valid_isbn13 / valid_isbn10
# ---------------------------------------------------------------------------


@pytest.mark.parametrize(
    ("isbn", "expected"),
    [
        ("9780140449136", True),
        ("9780140449139", False),  # bad checksum
        ("9770140449135", False),  # bad prefix (977 instead of 978/979)
        ("978014044913", False),  # too short
        ("97801404491366", False),  # too long
        ("978014044913X", False),  # non-digit check char
    ],
)
def test_valid_isbn13(isbn, expected):
    assert valid_isbn13(isbn) == expected


@pytest.mark.parametrize(
    ("isbn", "expected"),
    [
        ("0306406152", True),
        ("0306406151", False),  # bad checksum
        ("043942089X", True),  # 'X' check digit
        ("043942089x", False),  # fullmatch requires uppercase X
        ("03064061", False),  # too short
        ("030640615299", False),  # too long
        ("03064061X2", False),  # 'X' not in last position
    ],
)
def test_valid_isbn10(isbn, expected):
    assert valid_isbn10(isbn) == expected


# ---------------------------------------------------------------------------
# isbn10_to_isbn13
# ---------------------------------------------------------------------------


def test_isbn10_to_isbn13_known_value():
    assert isbn10_to_isbn13("0306406152") == "9780306406157"


def test_isbn10_to_isbn13_with_x_check_digit():
    assert isbn10_to_isbn13("043942089X") == "9780439420891"


# ---------------------------------------------------------------------------
# isbn_from_text
# ---------------------------------------------------------------------------


@pytest.mark.parametrize(
    ("text", "expected"),
    [
        (None, None),
        ("", None),
        ("Order number 1234567890123", None),  # no 978/979, no ISBN label
        ("Copyright 1978, all rights reserved", None),  # 978 preceded by a digit
        ("ISBN: 0-306-40615-2", "9780306406157"),  # ISBN-10 label
        ("ISBN-13: 978-0-14-044913-6", "9780140449136"),
        ("isbn 9780140449136", "9780140449136"),  # case-insensitive label
        ("Available as 9780-14-044913-6 paperback", "9780140449136"),  # bare visible 978
        ("9780-14-044913-9 is not valid", None),  # bad checksum, no label fallback
    ],
)
def test_isbn_from_text(text, expected):
    assert isbn_from_text(text) == expected


def test_isbn_from_text_label_takes_priority_over_bare_number():
    text = "Related title 978-0-14-044913-9, this one: ISBN 9780306406157"
    assert isbn_from_text(text) == "9780306406157"


# ---------------------------------------------------------------------------
# isbn_from_url
# ---------------------------------------------------------------------------


@pytest.mark.parametrize(
    ("url", "expected"),
    [
        (None, None),
        ("", None),
        ("https://example.com/product/123456", None),  # no 978/979
        ("https://example.com/item/1978012345678", None),  # 978 preceded by digit
        ("https://example.com/isbn/9780140449136", "9780140449136"),
        ("https://example.com/isbn/978-0-14-044913-6", "9780140449136"),
        ("https://example.com/isbn/978-0-14-044913-9", None),  # bad checksum
    ],
)
def test_isbn_from_url(url, expected):
    assert isbn_from_url(url) == expected


def test_isbn_from_url_extracts_isbn_from_among_other_digits():
    url = "https://example2.com/catalog/978-0-14-044913-6/details"
    assert isbn_from_url(url) == "9780140449136"


# ---------------------------------------------------------------------------
# extract_isbn
# ---------------------------------------------------------------------------


def test_extract_isbn_no_match_returns_none():
    soup = BeautifulSoup("<p>No identifiers here, just some text.</p>", "html.parser")
    assert extract_isbn(soup) is None


def test_extract_isbn_from_labeled_isbn13():
    soup = BeautifulSoup("<p>ISBN: 978-0-14-044913-6</p>", "html.parser")
    assert extract_isbn(soup) == "9780140449136"


def test_extract_isbn_from_labeled_isbn10_converts_to_isbn13():
    soup = BeautifulSoup("<p>ISBN-10: 0-306-40615-2</p>", "html.parser")
    assert extract_isbn(soup) == "9780306406157"


def test_extract_isbn_from_bare_isbn13_with_separators():
    soup = BeautifulSoup("<p>Product code 9780-14-044913-6 available now</p>", "html.parser")
    assert extract_isbn(soup) == "9780140449136"


def test_extract_isbn_from_bare_isbn10_with_valid_checksum():
    soup = BeautifulSoup("<p>Catalog 0306406152 item</p>", "html.parser")
    assert extract_isbn(soup) == "9780306406157"


def test_extract_isbn_ignores_bare_10_digit_number_with_bad_checksum():
    soup = BeautifulSoup("<p>Reference 0306406151 number</p>", "html.parser")
    assert extract_isbn(soup) is None


def test_extract_isbn_scans_raw_markup_for_data_attributes():
    soup = BeautifulSoup('<div data-isbn="9780140449136"></div>', "html.parser")
    assert extract_isbn(soup) == "9780140449136"


def test_extract_isbn_label_takes_priority_over_bare_number():
    soup = BeautifulSoup(
        "<p>Also see 978-0-14-044913-9 (unrelated). ISBN: 9780306406157</p>",
        "html.parser",
    )
    assert extract_isbn(soup) == "9780306406157"
