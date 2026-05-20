"""
Final ISBN yield tally across all platform JSONL files.

Outputs per-platform counts (total / isbn / catalog_only / missing)
and grand totals, sorted by missing count descending.

Run:
  python3 final_tally.py [--data-dir data] [--min-missing N] [--csv]
"""

import argparse
import json
import sys
from pathlib import Path

sys.stdout.reconfigure(line_buffering=True)


def tally_file(fpath: Path) -> tuple[int, int, int, int]:
    """Return (total, has_isbn, catalog_only, missing)."""
    total = has_isbn = catalog_only = missing = 0
    for line in fpath.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        try:
            rec = json.loads(line)
        except json.JSONDecodeError:
            continue
        total += 1
        if rec.get("isbn"):
            has_isbn += 1
        elif rec.get("catalog_ids"):
            catalog_only += 1
        else:
            missing += 1
    return total, has_isbn, catalog_only, missing


def main():
    parser = argparse.ArgumentParser(description="Tally ISBN yields across all platforms")
    parser.add_argument("--data-dir", default="data")
    parser.add_argument("--min-missing", type=int, default=0,
                        help="Only show platforms with at least N missing records")
    parser.add_argument("--csv", action="store_true", help="Output CSV instead of table")
    args = parser.parse_args()

    data_dir = Path(args.data_dir)
    files = sorted(data_dir.glob("*_listings.jsonl"))

    rows: list[tuple[str, int, int, int, int]] = []
    for fpath in files:
        total, has_isbn, catalog_only, miss = tally_file(fpath)
        if total == 0:
            continue
        rows.append((fpath.name, total, has_isbn, catalog_only, miss))

    rows.sort(key=lambda r: r[4], reverse=True)

    if args.min_missing:
        rows = [r for r in rows if r[4] >= args.min_missing]

    gt, gi, gc, gm = 0, 0, 0, 0
    for _, t, i, c, m in rows:
        gt += t; gi += i; gc += c; gm += m

    if args.csv:
        print("platform,total,has_isbn,catalog_only,missing,isbn_pct")
        for name, t, i, c, m in rows:
            pct = f"{100*i/t:.1f}" if t else "0.0"
            print(f"{name},{t},{i},{c},{m},{pct}")
        pct_total = f"{100*gi/gt:.1f}" if gt else "0.0"
        print(f"TOTAL,{gt},{gi},{gc},{gm},{pct_total}")
        return

    # Table output
    col_w = max(len(r[0]) for r in rows) if rows else 30
    header = (
        f"{'Platform':<{col_w}}  {'Total':>8}  {'ISBN':>8}  "
        f"{'Cat-only':>8}  {'Missing':>8}  {'ISBN%':>6}"
    )
    sep = "-" * len(header)
    print(header)
    print(sep)

    for name, t, i, c, m in rows:
        pct = f"{100*i/t:.1f}%" if t else "—"
        print(
            f"{name:<{col_w}}  {t:>8,}  {i:>8,}  {c:>8,}  {m:>8,}  {pct:>6}"
        )

    print(sep)
    pct_total = f"{100*gi/gt:.1f}%" if gt else "—"
    print(
        f"{'TOTAL':<{col_w}}  {gt:>8,}  {gi:>8,}  {gc:>8,}  {gm:>8,}  {pct_total:>6}"
    )
    print(f"\n{len(rows)} platforms  |  {gt:,} records  |  {gi:,} with ISBN  "
          f"|  {gc:,} catalog-only  |  {gm:,} missing")


if __name__ == "__main__":
    main()
