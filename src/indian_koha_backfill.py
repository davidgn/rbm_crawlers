"""
Backfill ISBNs for Indian platform records using Indian Koha OPACs.

Searches TISS (Tata Institute of Social Sciences) and FOSMA (Maritime
Institute & Research Organisation, Kolkata) Koha catalogs for records
from Indian used-book marketplaces that are missing ISBNs.

Run AFTER openlibrary_backfill.py (which covers the broader corpus).

Targets:
  bookspie, nearbook, kitabain, bookmamu

Servers queried in order:
  1. opac.tiss.ac.in   — social sciences, development, policy
  2. fosma-opac.l2c2.co.in — maritime, shipping, port management

Run:
  python3 indian_koha_backfill.py [--dry-run] [--limit N]
"""

import argparse
import json
import re
import sys
import time
from pathlib import Path
from urllib.parse import unquote

import httpx
import zstandard

sys.stdout.reconfigure(line_buffering=True)

DATA_DIR = Path("data")

TARGET_FILES = [
    "bookspie_listings.jsonl",
    "nearbook_listings.jsonl",
    "kitabain_listings.jsonl",
    "bookmamu_listings.jsonl",
]

KOHA_SERVERS = [
    "https://opac.tiss.ac.in",
    "https://fosma-opac.l2c2.co.in",
]

HEADERS = {
    "User-Agent": "rbm-isbn-backfill/1.0 (contact: rbm-project)",
    "Connection": "close",
}

ISBN13_RE = re.compile(r"97[89][0-9]{10}")
ISBN10_RE = re.compile(r"\b[0-9]{9}[0-9X]\b")
YEAR_RE   = re.compile(r"\b(1[89]\d{2}|20\d{2})\b")
INDIAN_SCRIPT_RE = re.compile(r"[ऀ-ॿ઀-૿଀-୿ఀ-౿ಀ-೿ഀ-ൿ฀-๿؀-ۿ]")

def read_jsonl(path: Path) -> list[dict]:
    zst = path.with_suffix(path.suffix + ".zst")
    if not path.exists() and zst.exists():
        path = zst
    if path.suffix == ".zst":
        dctx = zstandard.ZstdDecompressor()
        raw = dctx.decompress(path.read_bytes(), max_output_size=2 << 30)
        lines = raw.decode("utf-8").splitlines()
    else:
        lines = path.read_text(encoding="utf-8").splitlines()
    return [json.loads(l) for l in lines if l.strip()]


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


# ── Koha OPAC search ──────────────────────────────────────────────────────────

def _get(client: httpx.Client, url: str, params: dict) -> httpx.Response | None:
    """GET with one retry on server-disconnect (keepalive reuse failure)."""
    for attempt in range(2):
        try:
            resp = client.get(url, params=params, timeout=15)
            resp.raise_for_status()
            return resp
        except httpx.RemoteProtocolError:
            if attempt == 0:
                time.sleep(1)
                continue
            return None
        except Exception as e:
            print(f"  request error {url}: {e}")
            return None
    return None


def koha_search(client: httpx.Client, base: str, title: str,
                author: str = "") -> list[int]:
    """Return list of biblionumbers matching title (+optional author)."""
    q = f'ti:"{title}"'
    if author:
        q += f' au:"{author}"'
    resp = _get(client, f"{base}/cgi-bin/koha/opac-search.pl",
                {"q": q, "count": "10"})
    if resp is None:
        return []
    return list(dict.fromkeys(
        int(m) for m in re.findall(r"biblionumber=(\d+)", resp.text)
    ))


def koha_isbn(client: httpx.Client, base: str, bib: int) -> str | None:
    """Fetch detail page and extract first valid ISBN-13."""
    resp = _get(client, f"{base}/cgi-bin/koha/opac-detail.pl",
                {"biblionumber": str(bib)})
    if resp is None:
        return None
    # <span property="isbn">9780XXXXXXXXX (pbk.)</span>
    for m in re.finditer(r'property="isbn">([^<]+)', resp.text):
        isbn = parse_isbn(m.group(1).strip())
        if isbn:
            return isbn
    # COinS rft.isbn fallback
    for m in re.finditer(r"rft\.isbn=([^&%\s]+)", resp.text):
        isbn = parse_isbn(unquote(m.group(1)))
        if isbn:
            return isbn
    return None


def koha_title(client: httpx.Client, base: str, bib: int) -> str:
    """Return catalog title for similarity check."""
    resp = _get(client, f"{base}/cgi-bin/koha/opac-detail.pl",
                {"biblionumber": str(bib)})
    if resp is None:
        return ""
    m = re.search(r"<title>([^<|]+)", resp.text)
    return m.group(1).strip() if m else ""


def search_servers(client: httpx.Client, title: str, author: str,
                   lst_year: int | None, min_sim: float) -> str | None:
    for base in KOHA_SERVERS:
        bibs = koha_search(client, base, title, author)
        if not bibs and author:
            bibs = koha_search(client, base, title)
        for bib in bibs[:5]:
            cat_title = koha_title(client, base, bib)
            sim = title_similarity(title, cat_title)
            if sim < min_sim:
                continue
            isbn = koha_isbn(client, base, bib)
            if isbn:
                # year guard: accept if no year data on either side
                if lst_year and cat_title:
                    m = YEAR_RE.search(cat_title)
                    if m and abs(lst_year - int(m.group(1))) > 3:
                        continue
                return isbn
    return None


# ── eligibility ───────────────────────────────────────────────────────────────

def is_eligible(rec: dict) -> bool:
    if rec.get("isbn"):
        return False
    title = rec.get("title") or ""
    author = rec.get("author") or ""
    if not title or not author:
        return False
    if INDIAN_SCRIPT_RE.search(title + author):
        return False
    return True


# ── main ──────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(
        description="Backfill ISBNs for Indian platform records via Koha OPACs"
    )
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--min-similarity", type=float, default=0.45)
    parser.add_argument("--delay", type=float, default=0.5)
    parser.add_argument("--checkpoint-every", type=int, default=100)
    args = parser.parse_args()

    file_records: dict[str, list[dict]] = {}
    all_eligible: list[tuple[str, dict]] = []

    for fname in TARGET_FILES:
        fpath = DATA_DIR / fname
        zst = fpath.with_suffix(fpath.suffix + ".zst")
        if not fpath.exists() and not zst.exists():
            continue
        records = read_jsonl(fpath)
        file_records[str(fpath)] = records
        eligible = [r for r in records if is_eligible(r)]
        if eligible:
            all_eligible.extend((str(fpath), r) for r in eligible)
            print(f"{fname}: {len(records)} total, {len(eligible)} eligible")

    print(f"\nTotal eligible: {len(all_eligible)}")
    if args.limit:
        all_eligible = all_eligible[: args.limit]
        print(f"Processing first {args.limit}")

    found = no_match = 0

    with httpx.Client(headers=HEADERS, follow_redirects=True, verify=False) as client:
        for i, (fpath, rec) in enumerate(all_eligible, 1):
            title  = rec.get("title") or ""
            author = rec.get("author") or ""
            yr     = listing_year(rec)

            if (i - 1) % 50 == 0:
                print(f"[{i}/{len(all_eligible)}] found={found} no_match={no_match}")

            isbn = search_servers(client, title, author, yr, args.min_similarity)
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

    print(f"\nDone. found={found} no_match={no_match}")

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
