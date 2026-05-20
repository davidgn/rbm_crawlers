"""
Backfill ISBNs for knizhenpazar records using Bulgarian library Z39.50 servers.

Targets records that cobiss_backfill.py could not resolve via the COBISS BG API.
Queries two servers in sequence:
  1. Central Library of the Bulgarian Academy of Sciences (CLBAS_T)
  2. Sofia University St. Kliment Ohridski (LSU01)

Searches use Bulgarian→Latin transliteration since the Z39.50 title index
on these Aleph servers does not reliably support direct Cyrillic queries, but
alternate-script fields (245/246) make transliterated searches effective.

Run AFTER cobiss_backfill.py:
  python3 bulgarian_z3950_backfill.py [--dry-run] [--limit N]
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
    "knizhenpazar_listings.jsonl",
]

Z3950_SERVERS = [
    ("aleph.cl.bas.bg:9991", "CLBAS_T"),    # Bulgarian Academy of Sciences
    ("aleph.libsu.uni-sofia.bg:9991", "LSU01"),  # Sofia University
]

ISBN13_RE = re.compile(r"97[89][0-9]{10}")
ISBN10_RE = re.compile(r"\b[0-9]{9}[0-9X]\b")
YEAR_RE = re.compile(r"\b(1[89]\d{2}|20\d{2})\b")

# Bulgarian Cyrillic → Latin character map (all single→multi expansions handled here)
_BG_MAP: dict[str, str] = {
    "А": "A",  "а": "a",
    "Б": "B",  "б": "b",
    "В": "V",  "в": "v",
    "Г": "G",  "г": "g",
    "Д": "D",  "д": "d",
    "Е": "E",  "е": "e",
    "Ж": "Zh", "ж": "zh",
    "З": "Z",  "з": "z",
    "И": "I",  "и": "i",
    "Й": "Y",  "й": "y",
    "К": "K",  "к": "k",
    "Л": "L",  "л": "l",
    "М": "M",  "м": "m",
    "Н": "N",  "н": "n",
    "О": "O",  "о": "o",
    "П": "P",  "п": "p",
    "Р": "R",  "р": "r",
    "С": "S",  "с": "s",
    "Т": "T",  "т": "t",
    "У": "U",  "у": "u",
    "Ф": "F",  "ф": "f",
    "Х": "Kh", "х": "kh",
    "Ц": "Ts", "ц": "ts",
    "Ч": "Ch", "ч": "ch",
    "Ш": "Sh", "ш": "sh",
    "Щ": "Sht","щ": "sht",
    "Ъ": "A",  "ъ": "a",
    "Ь": "",   "ь": "",
    "Ю": "Yu", "ю": "yu",
    "Я": "Ya", "я": "ya",
}


def transliterate_bg(text: str) -> str:
    """Transliterate Bulgarian Cyrillic to Latin."""
    return "".join(_BG_MAP.get(ch, ch) for ch in text)


def char_bigrams(text: str) -> set[str]:
    t = re.sub(r"\s+", "", text.lower())
    return {t[i:i + 2] for i in range(len(t) - 1)}


def title_similarity(a: str, b: str) -> float:
    ba, bb = char_bigrams(a), char_bigrams(b)
    if not ba or not bb:
        return 0.0
    return len(ba & bb) / len(ba | bb)


def isbn10_to_isbn13(isbn10: str) -> str | None:
    """Convert ISBN-10 to ISBN-13."""
    digits = re.sub(r"[^0-9X]", "", isbn10.upper())
    if len(digits) != 10:
        return None
    prefix = "978" + digits[:9]
    total = sum(int(c) * (1 if i % 2 == 0 else 3) for i, c in enumerate(prefix))
    check = (10 - (total % 10)) % 10
    isbn13 = prefix + str(check)
    if ISBN13_RE.fullmatch(isbn13):
        return isbn13
    return None


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


def z3950_query(host_port: str, base: str, title: str, author: str = "") -> str:
    """Run a Z39.50 search via yaz-client and return raw stdout."""
    title_q = title.replace('"', "'")
    author_q = author.replace('"', "'") if author else ""
    if title_q and author_q:
        find_cmd = f'find @and @attr 1=4 "{title_q}" @attr 1=1003 "{author_q}"'
    elif author_q:
        find_cmd = f'find @attr 1=1003 "{author_q}"'
    else:
        find_cmd = f'find @attr 1=4 "{title_q}"'

    batch = (
        f"open {host_port}/{base}\n"
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
            timeout=20,
        )
        return result.stdout.decode("utf-8", errors="replace")
    except Exception as e:
        print(f"  yaz-client error: {e}")
        return ""


def parse_marc_records(output: str) -> list[dict]:
    """Parse yaz-client MARC text output into list of {title, isbn, year} dicts."""
    records = []
    # Split on record boundaries
    blocks = re.split(r"\[(?:CLBAS_T|LSU01)\]Record type: USmarc", output)
    for block in blocks[1:]:
        rec: dict = {}
        # Title from 245 $a
        m = re.search(r"^245 [\d ]{2} \$a (.+?)(?:\s+\$|\n)", block, re.MULTILINE)
        if m:
            rec["title"] = re.sub(r"\s*[:/]\s*$", "", m.group(1).strip())
        # Alternate title from 246 $a (often Latin-script transliteration)
        m246 = re.search(r"^246 [\d ]{2} \$a (.+?)(?:\s+\$|\n)", block, re.MULTILINE)
        if m246:
            rec["alt_title"] = m246.group(1).strip()
        # ISBN from 020 $a
        for m_isbn in re.finditer(r"^020 [ \d]{2} \$a ([^\n$]+)", block, re.MULTILINE):
            isbn = parse_isbn(m_isbn.group(1).strip())
            if isbn:
                rec["isbn"] = isbn
                break
        # Year from 260/264 $c
        m_yr = re.search(r"^(?:260|264) [\d ]{2}.*\$c (\d{4})", block, re.MULTILINE)
        if m_yr:
            rec["year"] = int(m_yr.group(1))
        if rec:
            records.append(rec)
    return records


def search_servers(title: str, author: str, lst_year: int | None,
                   min_similarity: float) -> tuple[str | None, dict]:
    """Search all Z39.50 servers; return (isbn, catalog_ids).

    Strategy: Z39.50 title index on Aleph/BAS only has Cyrillic (245 field) and
    the original Latin title (246 field).  Direct Cyrillic search is blocked by
    charset negotiation; transliterated title rarely matches the 246 Latin title.
    Best approach: search by transliterated author surname (many Bulgarian author
    names are phonetic renderings of Western surnames that transliterate back
    correctly, e.g. Зола→Zola, Толстой→Tolstoy).  Verify match by title bigrams.
    """
    trans_title = transliterate_bg(title)
    # Author surname = last word of author string
    author_words = transliterate_bg(author).split() if author else []
    trans_surname = author_words[-1] if author_words else ""

    for host_port, base in Z3950_SERVERS:
        # Primary: author surname search
        if trans_surname:
            output = z3950_query(host_port, base, "", trans_surname)
            if "Number of hits: 0" in output:
                # Fallback: transliterated title (works when 246 alt-title matches)
                output = z3950_query(host_port, base, trans_title)
        else:
            output = z3950_query(host_port, base, trans_title)

        marc_recs = parse_marc_records(output)
        for mr in marc_recs:
            cand_title = mr.get("title") or mr.get("alt_title") or ""
            sim_trans = title_similarity(trans_title, transliterate_bg(cand_title))
            sim_direct = title_similarity(title, cand_title)
            if max(sim_trans, sim_direct) < min_similarity:
                continue
            if lst_year and mr.get("year") and abs(lst_year - mr["year"]) > 3:
                continue
            if mr.get("isbn"):
                return mr["isbn"], {}

    return None, {}


def is_eligible(rec: dict) -> bool:
    if rec.get("isbn") or rec.get("catalog_ids"):
        return False
    title = rec.get("title") or ""
    return bool(title)


def main():
    parser = argparse.ArgumentParser(
        description="Backfill ISBNs for knizhenpazar via Bulgarian Z39.50 servers"
    )
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--limit", type=int, default=0)
    parser.add_argument("--min-similarity", type=float, default=0.4)
    parser.add_argument("--delay", type=float, default=0.3)
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

    found_isbn = no_result = no_match = 0

    for i, (fpath, rec) in enumerate(all_eligible, 1):
        title = rec.get("title") or ""
        author = rec.get("author") or ""
        lst_year = listing_year(rec)

        if (i - 1) % 50 == 0:
            print(f"[{i}/{len(all_eligible)}] isbn={found_isbn} no_result={no_result} no_match={no_match}")

        isbn, _ = search_servers(title, author, lst_year, args.min_similarity)
        time.sleep(args.delay)

        if isbn:
            rec["isbn"] = isbn
            found_isbn += 1
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
                print(f"  [checkpoint] saved {len(ckpt_files)} files at record {i}")

    print(f"\nDone. isbn={found_isbn} no_result={no_result} no_match={no_match}")

    if args.dry_run or found_isbn == 0:
        return

    updated = {fpath for fpath, rec in all_eligible if rec.get("isbn")}
    for fpath in updated:
        records = file_records[fpath]
        tmp = Path(fpath).with_suffix(".jsonl.tmp")
        with tmp.open("w", encoding="utf-8") as fh:
            for r in records:
                fh.write(json.dumps(r, ensure_ascii=False) + "\n")
        tmp.replace(Path(fpath))
        print(f"Written {len(records)} records to {fpath}")


if __name__ == "__main__":
    main()
