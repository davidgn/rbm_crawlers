import sys
from pathlib import Path

from bs4 import BeautifulSoup
from hypothesis import given, strategies as st

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


@given(st.text())
def test_normalize_isbn_never_crashes_and_returns_valid_isbn13_or_none(value):
    result = normalize_isbn(value)
    assert result is None or valid_isbn13(result)


@given(st.text())
def test_normalize_isbn_is_idempotent(value):
    once = normalize_isbn(value)
    assert normalize_isbn(once) == once


@given(
    st.lists(st.integers(min_value=0, max_value=9), min_size=9, max_size=9).map(
        lambda digits: "".join(str(d) for d in digits)
    ),
    st.sampled_from("0123456789X"),
)
def test_isbn10_to_isbn13_roundtrip_for_any_valid_isbn10(prefix, check_digit):
    isbn10 = prefix + check_digit
    if not valid_isbn10(isbn10):
        return
    isbn13 = isbn10_to_isbn13(isbn10)
    assert valid_isbn13(isbn13)
    assert isbn13 == normalize_isbn(isbn10)


@given(st.text())
def test_valid_isbn13_never_crashes(value):
    assert isinstance(valid_isbn13(value), bool)


@given(st.text())
def test_valid_isbn10_never_crashes(value):
    assert isinstance(valid_isbn10(value), bool)


@given(st.text())
def test_isbn_from_text_never_crashes_and_returns_valid_isbn13_or_none(value):
    result = isbn_from_text(value)
    assert result is None or valid_isbn13(result)


@given(st.text())
def test_isbn_from_url_never_crashes_and_returns_valid_isbn13_or_none(value):
    result = isbn_from_url(value)
    assert result is None or valid_isbn13(result)


@given(st.text(max_size=200))
def test_extract_isbn_never_crashes_and_returns_valid_isbn13_or_none(value):
    soup = BeautifulSoup(value, "html.parser")
    result = extract_isbn(soup)
    assert result is None or valid_isbn13(result)
