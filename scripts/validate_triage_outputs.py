#!/usr/bin/env python3
"""Validate JSONL outputs for the regional triage continuation targets."""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from urllib.parse import urlparse


REQUIRED = ("territory", "platform", "title", "listing_url")


def validate_file(path: Path) -> dict:
    report = {
        "file": str(path),
        "rows": 0,
        "errors": [],
        "warnings": [],
    }
    seen: set[str] = set()
    if not path.exists():
        report["errors"].append("missing file")
        return report

    for line_num, line in enumerate(path.read_text(encoding="utf-8").splitlines(), start=1):
        if not line.strip():
            continue
        report["rows"] += 1
        try:
            row = json.loads(line)
        except json.JSONDecodeError as exc:
            report["errors"].append(f"line {line_num}: invalid JSON: {exc}")
            continue

        for key in REQUIRED:
            if not row.get(key):
                report["errors"].append(f"line {line_num}: missing {key}")

        url = row.get("listing_url") or ""
        parsed = urlparse(url)
        if parsed.scheme not in {"http", "https"} or not parsed.netloc:
            report["errors"].append(f"line {line_num}: invalid listing_url {url!r}")
        if url in seen:
            report["warnings"].append(f"line {line_num}: duplicate URL {url}")
        seen.add(url)

        if row.get("platform") == "BeninMarketPlace Livres" and "/livres" in parsed.path:
            report["errors"].append(f"line {line_num}: category URL retained in BeninMarketPlace output")

    if report["rows"] == 0:
        report["errors"].append("no rows")
    return report


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("paths", nargs="+", type=Path)
    args = parser.parse_args()

    reports = [validate_file(path) for path in args.paths]
    print(json.dumps(reports, ensure_ascii=False, indent=2))
    return 1 if any(report["errors"] for report in reports) else 0


if __name__ == "__main__":
    raise SystemExit(main())
