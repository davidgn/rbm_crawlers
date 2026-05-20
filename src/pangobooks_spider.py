"""
PangoBooks used-book marketplace spider (USA).

API discovered via APK reverse engineering (com.grantwsingleton.pangobookslive 3.0.7):
  - Backend: Elastic Cloud (Elasticsearch)
  - Endpoint: https://6e6f78e8a87248ddb0013e106d1c0a13.us-central1.gcp.cloud.es.io/books/_search
  - Auth: ApiKey (base64 of id:secret, embedded in React Native bundle)
  - Total listings: ~2.45M as of 2026-05

Pagination: Elasticsearch search_after with sort on [timestamp, _id].

Run:
  python3 pangobooks_spider.py [--limit N] [--delay SECS]
"""

import argparse
import base64
import json
import logging
import sys
import time
from pathlib import Path

import httpx

sys.stdout.reconfigure(line_buffering=True)
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(name)s: %(message)s",
)
log = logging.getLogger("PangoBooksSpider")

ELASTIC_BASE = "https://6e6f78e8a87248ddb0013e106d1c0a13.us-central1.gcp.cloud.es.io"
ELASTIC_KEY_RAW = "-6llv5wB1YLUYjHpxMem:p_Mjv6Pu5_0bN8-Zsxakbw"
ELASTIC_KEY = base64.b64encode(ELASTIC_KEY_RAW.encode()).decode()

DATA_DIR = Path(__file__).parent / "data"
OUTPUT_FILE = DATA_DIR / "pangobooks_listings.jsonl"

PAGE_SIZE = 500
FIELDS = [
    "id", "isbn", "title", "author", "amount", "condition",
    "seller_id", "format", "ships_from_state", "genre", "type",
    "hashtags", "timestamp",
]


def fetch_page(client: httpx.Client, search_after: list | None) -> dict:
    body: dict = {
        "size": PAGE_SIZE,
        "query": {"match_all": {}},
        "_source": FIELDS,
        "sort": [{"timestamp": "asc"}, {"_doc": "asc"}],
    }
    if search_after:
        body["search_after"] = search_after
    resp = client.post(
        f"{ELASTIC_BASE}/books/_search",
        json=body,
        headers={
            "Authorization": f"ApiKey {ELASTIC_KEY}",
            "Content-Type": "application/json",
        },
        timeout=60.0,
    )
    resp.raise_for_status()
    return resp.json()


def record_from_hit(hit: dict) -> dict:
    src = hit.get("_source", {})
    amount_cents = src.get("amount")
    price_str = f"${amount_cents / 100:.2f} USD" if amount_cents is not None else None

    fmt = src.get("format") or {}
    genre = src.get("genre") or {}
    book_type = src.get("type") or {}
    state = src.get("ships_from_state") or {}

    listing_id = src.get("id") or hit["_id"]

    return {
        "territory": "United States",
        "platform": "PangoBooks",
        "seller_id": src.get("seller_id"),
        "title": src.get("title"),
        "author": src.get("author"),
        "isbn": src.get("isbn"),
        "publisher": None,
        "publication_year": None,
        "edition": None,
        "language": "en",
        "pages": None,
        "binding": fmt.get("display"),
        "dimensions": None,
        "category": genre.get("display"),
        "condition": src.get("condition"),
        "price": price_str,
        "listing_url": f"https://pangobooks.com/books/{listing_id}",
        "timestamp": (
            _ms_to_iso(src["timestamp"]) if src.get("timestamp") else None
        ),
        "seller_comments": _comments(src),
    }


def _ms_to_iso(ts_ms: int) -> str:
    from datetime import datetime, timezone
    dt = datetime.fromtimestamp(ts_ms / 1000, tz=timezone.utc)
    return dt.isoformat()


def _comments(src: dict) -> str | None:
    parts = []
    state = src.get("ships_from_state") or {}
    if state.get("name"):
        parts.append(f"ships_from={state['name']}")
    tags = src.get("hashtags") or []
    if tags:
        parts.append(f"hashtags={','.join(tags)}")
    book_type = src.get("type") or {}
    if book_type.get("display"):
        parts.append(f"type={book_type['display']}")
    return "; ".join(parts) if parts else None


def load_seen_ids() -> set[str]:
    seen: set[str] = set()
    if not OUTPUT_FILE.exists():
        return seen
    with open(OUTPUT_FILE, encoding="utf-8") as fh:
        for line in fh:
            line = line.strip()
            if not line:
                continue
            try:
                rec = json.loads(line)
                url = rec.get("listing_url", "")
                if url:
                    seen.add(url.split("/")[-1])
            except json.JSONDecodeError:
                pass
    return seen


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=0, help="Max listings to fetch (0 = no limit)")
    ap.add_argument("--delay", type=float, default=0.5, help="Delay between pages (seconds)")
    args = ap.parse_args()

    DATA_DIR.mkdir(parents=True, exist_ok=True)

    seen = load_seen_ids()
    log.info("Loaded %d existing listing IDs from output file.", len(seen))

    client = httpx.Client(follow_redirects=True)
    search_after = None
    total_written = 0
    page_num = 0

    with open(OUTPUT_FILE, "a", encoding="utf-8") as out_fh:
        while True:
            page_num += 1
            try:
                data = fetch_page(client, search_after)
            except Exception as exc:
                log.error("Fetch error page %d: %s", page_num, exc)
                time.sleep(10)
                continue

            hits = data.get("hits", {}).get("hits", [])
            if not hits:
                log.info("No more results. Done.")
                break

            new_count = 0
            for hit in hits:
                src = hit.get("_source", {})
                listing_id = (src.get("id") or hit["_id"]).split("-")[-1]  # last segment
                # Use full id as dedup key
                full_id = src.get("id") or hit["_id"]
                if full_id in seen:
                    continue
                seen.add(full_id)

                rec = record_from_hit(hit)
                out_fh.write(json.dumps(rec, ensure_ascii=False) + "\n")
                new_count += 1
                total_written += 1

                if args.limit and total_written >= args.limit:
                    log.info("Reached --limit %d. Stopping.", args.limit)
                    out_fh.flush()
                    return

            out_fh.flush()
            last_hit = hits[-1]
            # Use hit["sort"] values to match Elastic's internal sort representation
            search_after = last_hit.get("sort", [
                last_hit["_source"].get("timestamp"),
            ])

            log.info(
                "Page %d: %d hits, %d new. Total written: %d",
                page_num, len(hits), new_count, total_written,
            )

            if len(hits) < PAGE_SIZE:
                log.info("Partial page — end of index.")
                break

            time.sleep(args.delay)

    log.info("Finished. Total new listings written: %d", total_written)


if __name__ == "__main__":
    main()
