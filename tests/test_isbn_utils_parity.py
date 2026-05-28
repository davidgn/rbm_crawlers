import sys
from pathlib import Path

import pytest


ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
sys.path.insert(0, str(SRC))

from isbn_utils import normalize_isbn, valid_isbn10, valid_isbn13  # noqa: E402

isbnlib = pytest.importorskip("isbnlib")


@pytest.mark.parametrize(
    ("raw", "expected"),
    [
        ("0-306-40615-2", "9780306406157"),
        ("978-0-306-40615-7", "9780306406157"),
        ("ISBN 9780140449136", "9780140449136"),
        ("not an isbn", None),
    ],
)
def test_local_isbn_normalization_matches_isbnlib_for_core_cases(raw, expected):
    canonical = isbnlib.canonical(raw)
    if isbnlib.is_isbn10(canonical):
        isbnlib_value = isbnlib.to_isbn13(canonical)
    elif isbnlib.is_isbn13(canonical):
        isbnlib_value = canonical
    else:
        isbnlib_value = None

    assert normalize_isbn(raw) == expected
    assert normalize_isbn(raw) == isbnlib_value


def test_local_checksum_helpers_match_isbnlib_validation():
    assert valid_isbn10("0306406152") == isbnlib.is_isbn10("0306406152")
    assert valid_isbn13("9780306406157") == isbnlib.is_isbn13("9780306406157")
    assert valid_isbn13("9780306406158") == isbnlib.is_isbn13("9780306406158")
