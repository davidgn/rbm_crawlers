"""
Backfill ISBNs for Indian platform records using the University of
Hyderabad Z39.50 server (Virtua ILS, igmlnet.uohyd.ac.in:1111/Default).

UHyd is a general university library (broad subject coverage) and the
only confirmed reachable Indian Z39.50 target. Run after
openlibrary_backfill.py; targets remaining ISBN gaps in Indian platforms.

Targets: bookspie, nearbook, kitabain, bookmamu

Run:
  python3 uhyd_z3950_backfill.py [--dry-run] [--limit N]
"""

import argparse
import json
import re
import subprocess
import sys
import time
from pathlib import Path

sys.stdout.reconfigure(line_buffering=True)

DATA_DIR = Path("data")

TARGET_FILES = [
    "bookspie_listings.jsonl",
    "nearbook_listings.jsonl",
    "kitabain_listings.jsonl",
    "bookmamu_listings.jsonl",
]

UHYD_HOST = "igmlnet.uohyd.ac.in:1111/Default"

ISBN13_RE = re.compile(r"97[89][0-9]{10}")
YEAR_RE   = re.compile(r"\b(1[89]\d{2}|20\d{2})\b")
INDIAN_SCRIPT_RE = re.compile(r"[ऀ-ॿ઀-૿଀-୿ఀ-౿ಀ-೿ഀ-ൿ฀-๿؀-ۿ]")

# ── text helpers ──────────────────────────────────────────────────────────────

def char_bigrams(text: str) -> set[str]:
    t = re.sub(r"\s+", "", text.lower())
    return {t[i:i+2] for i in range(len(t) - 1)}


def title_similarity(a: str, b: str) -> float:
    ba, bb = char_bigrams(a), char_bigrams(b)
    if not ba or not bb:
        return 0.0
    return len(ba & bb) / len(ba | bb)


# ── ISBN helpers ──────────────────────────────────────────────────────────────

def isbn10_to_isbn13(isbn10: str) -> str | None:
    digits = re.sub(r"[^0-9X]", "", isbn10.upper())
    if len(digits) != 10:
        return None
    prefix = "978" + digits[:9]
    total = sum(int(c) * (1 if i % 2 == 0 else 3) for i, c in enumerate(prefix))
    check = (10 - (total % 10)) % 10
    candidate = prefix + str(check)
    return candidate if ISBN13_RE.fullmatch(candidate) else None


def parse_isbn(raw: str) -> str | None:
    clean = re.sub(r"[^0-9X]", "", raw.upper())
    if len(clean) == 13 and ISBN13_RE.fullmatch(clean):
        return clean
    if len(clean) == 10:
        return isbn10_to_isbn13(clean)
    return None


def listing_year(rec: dict) -> int | None:
    for field in ("publication_year", "year", "edition"):
        val = rec.get(field)
        if val:
            m = YEAR_RE.search(str(val))
            if m:
                return int(m.group(1))
    return None


# ── Z39.50 query ──────────────────────────────────────────────────────────────

def z3950_query(title: str, author: str = "") -> str:
    """Run yaz-client query against UHyd and return raw stdout."""
    title_q  = title.replace('"', "'")
    author_q = author.replace('"', "'") if author else ""
    if title_q and author_q:
        find_cmd = f'find @and @attr 1=4 "{title_q}" @attr 1=1003 "{author_q}"'
    else:
        find_cmd = f'find @attr 1=4 "{title_q}"'

    # Sleep 1s after open to allow Virtua's v3→v2 renegotiation to complete
    # before sending format/find commands.
    batch = (
        f"open {UHYD_HOST}\n"
        "sleep 1\n"
        "format usmarc\n"
        f"{find_cmd}\n"
        "show 1+5\n"
        "quit\n"
    )
    try:
        result = subprocess.run(
            ["yaz-client"],
            input=batch.encode("utf-8"),
            capture_output=True,
            timeout=45,
        )
        return result.stdout.decode("utf-8", errors="replace")
    except Exception as e:
        print(f"  yaz-client error: {e}")
        return ""


def parse_marc_records(output: str) -> list[dict]:
    """Parse yaz-client MARC text output into list of {title, isbn, year}."""
    records = []
    blocks = re.split(r"Record type: USmarc", output)
    for block in blocks[1:]:
        rec: dict = {}
        # Title from 245 $a
        m = re.search(r"^245 [ \d]{2} \$a (.+?)(?:\s+\$|\n)", block, re.MULTILINE)
        if m:
            rec["title"] = re.sub(r"\s*[:/]\s*$", "", m.group(1).strip())
        # ISBN from 020 $a (first valid one)
        for m_isbn in re.finditer(r"^020 [ \d]{2} \$a ([^\n$]+)", block, re.MULTILINE):
            isbn = parse_isbn(m_isbn.group(1).strip())
            if isbn:
                rec["isbn"] = isbn
                break
        # Year from 260/264 $c
        m_yr = re.search(r"^(?:260|264) [ \d]{2}.*\$c (\d{4})", block, re.MULTILINE)
        if m_yr:
            rec["year"] = int(m_yr.group(1))
        if rec:
            records.append(rec)
    return records


def search_uhyd(title: str, author: str, lst_year: int | None,
                min_similarity: float) -> str | None:
    output = z3950_query(title, author)

    if "Number of hits: 0" in output and author:
        output = z3950_query(title)

    marc_recs = parse_marc_records(output)
    for mr in marc_recs:
        cand_title = mr.get("title") or ""
        sim = title_similarity(title, cand_title)
        if sim < min_similarity:
            continue
        if lst_year and mr.get("year") and abs(lst_year - mr["year"]) > 3:
            continue
        if mr.get("isbn"):
            return mr["isbn"]
    return None


# ── eligibility ───────────────────────────────────────────────────────────────

def is_eligible(rec: dict) -> bool:
    if rec.get("isbn"):
        return False
    title  = rec.get("title")  or ""
    author = rec.get("author") or ""
    if not title or not author:
        return False
    if INDIAN_SCRIPT_RE.search(title + author):
        return False
    return True


# ── main ──────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(
        description="Backfill ISBNs for Indian platform records via UHyd Z39.50"
    )
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--min-similarity", type=float, default=0.4)
    parser.add_argument("--delay", type=float, default=0.4)
    parser.add_argument("--checkpoint-every", type=int, default=100)
    args = parser.parse_args()

    file_records: dict[str, list[dict]] = {}
    all_eligible: list[tuple[str, dict]] = []

    for fname in TARGET_FILES:
        fpath = DATA_DIR / fname
        if not fpath.exists():
            continue
        records = [json.loads(l) for l in fpath.read_text(encoding="utf-8").splitlines() if l.strip()]
        file_records[str(fpath)] = records
        eligible = [r for r in records if is_eligible(r)]
        if eligible:
            all_eligible.extend((str(fpath), r) for r in eligible)
            print(f"{fname}: {len(records)} total, {len(eligible)} eligible")

    print(f"\nTotal eligible: {len(all_eligible)}")
    if args.limit:
        all_eligible = all_eligible[: args.limit]
        print(f"Processing first {args.limit}")

    found = no_result = no_match = 0

    for i, (fpath, rec) in enumerate(all_eligible, 1):
        title  = rec.get("title")  or ""
        author = rec.get("author") or ""
        yr     = listing_year(rec)

        if (i - 1) % 50 == 0:
            print(f"[{i}/{len(all_eligible)}] found={found} no_result={no_result} no_match={no_match}")

        isbn = search_uhyd(title, author, yr, args.min_similarity)
        time.sleep(args.delay)

        if isbn:
            rec["isbn"] = isbn
            found += 1
        else:
            no_match += 1

        if not args.dry_run and args.checkpoint_every and i % args.checkpoint_every == 0:
            ckpt_files = {fp for fp, r in all_eligible[:i] if r.get("isbn")}
            for fp in ckpt_files:
                recs = file_records[fp]
                tmp = Path(fp).with_suffix(".jsonl.tmp")
                with tmp.open("w", encoding="utf-8") as fh:
                    for r in recs:
                        fh.write(json.dumps(r, ensure_ascii=False) + "\n")
                tmp.replace(Path(fp))
            if ckpt_files:
                print(f"  [checkpoint] {len(ckpt_files)} files at record {i}")

    print(f"\nDone. found={found} no_result={no_result} no_match={no_match}")

    if args.dry_run or found == 0:
        return

    updated = {fpath for fpath, rec in all_eligible if rec.get("isbn")}
    for fpath in updated:
        records = file_records[fpath]
        tmp = Path(fpath).with_suffix(".jsonl.tmp")
        with tmp.open("w", encoding="utf-8") as fh:
            for r in records:
                fh.write(json.dumps(r, ensure_ascii=False) + "\n")
        tmp.replace(Path(fpath))
        print(f"Written {len(records)} records → {fpath}")


if __name__ == "__main__":
    main()
