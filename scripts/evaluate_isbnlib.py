#!/usr/bin/env python3
"""Compare local ISBN helper behavior with optional isbnlib behavior."""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
sys.path.insert(0, str(SRC))

from isbn_utils import normalize_isbn  # noqa: E402

try:
    import isbnlib
except ImportError:  # pragma: no cover - depends on local optional tooling
    isbnlib = None


def isbnlib_result(value: str) -> dict[str, Any]:
    if isbnlib is None:
        return {"available": False}

    canonical = isbnlib.canonical(value)
    result: dict[str, Any] = {
        "available": True,
        "canonical": canonical or None,
        "is_isbn10": bool(canonical and isbnlib.is_isbn10(canonical)),
        "is_isbn13": bool(canonical and isbnlib.is_isbn13(canonical)),
        "ean13": None,
    }
    if canonical:
        try:
            result["ean13"] = isbnlib.to_isbn13(canonical)
        except Exception as exc:
            result["ean13_error"] = str(exc)
    return result


def compare_value(value: str) -> dict[str, Any]:
    local = normalize_isbn(value)
    external = isbnlib_result(value)
    return {
        "input": value,
        "local_normalize_isbn": local,
        "isbnlib": external,
        "same_ean13": local == external.get("ean13") if external.get("available") else None,
    }


def compare_values(values: list[str]) -> dict[str, Any]:
    rows = [compare_value(value) for value in values]
    return {
        "isbnlib_available": isbnlib is not None,
        "comparisons": rows,
        "recommendation": (
            "Keep src/isbn_utils.py as the runtime dependency-free canonical helper; "
            "use isbnlib as an optional audit/enrichment comparator for batch QA."
        ),
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("isbn", nargs="+")
    parser.add_argument("--json-out", type=Path)
    args = parser.parse_args()

    payload = compare_values(args.isbn)
    output = json.dumps(payload, ensure_ascii=False, indent=2)
    if args.json_out:
        args.json_out.parent.mkdir(parents=True, exist_ok=True)
        args.json_out.write_text(output + "\n", encoding="utf-8")
    else:
        print(output)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
