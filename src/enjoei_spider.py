"""
Enjoei used-goods marketplace spider (Brazil).

API: public GraphQL endpoint — no auth required.
  POST https://enjusearch.enjoei.com.br/graphql
  Origin: https://www.enjoei.com.br

Pagination: Relay cursor (`after` variable). API hard-caps total at 10 000
per query, so multiple search terms are used to maximise coverage.

ISBNs are not available from the search API; title + publisher (brand)
are captured for downstream matching.

Run:
  python3 enjoei_spider.py [--limit N] [--delay SECS]
"""

import argparse
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
log = logging.getLogger("EnjoeiSpider")

GRAPHQL_URL = "https://enjusearch.enjoei.com.br/graphql"
HEADERS = {
    "Content-Type": "application/json",
    "Origin": "https://www.enjoei.com.br",
    "User-Agent": (
        "Mozilla/5.0 (Linux; Android 10; Pixel 4) "
        "AppleWebKit/537.36 (KHTML, like Gecko) "
        "Chrome/124.0.0.0 Mobile Safari/537.36"
    ),
}

SEARCH_QUERY = """
query searchProducts($term: String!, $first: Int, $after: String) {
  search(products: {term: $term}) {
    products(first: $first, after: $after) {
      total
      edges {
        cursor
        node {
          id
          path
          title { name }
          price { original current }
          store { path displayable { name } }
          brand { displayable_name }
        }
      }
    }
  }
}
"""

# Multiple terms to work around 10 000-item API cap per query.
SEARCH_TERMS = [
    "livro",
    "romance",
    "ficção",
    "biografia",
    "infantil",
    "didático",
    "quadrinhos",
    "manga",
    "autoajuda",
    "técnico",
    "história",
    "filosofia",
    "psicologia",
    "ciência",
    "poesia",
]

PAGE_SIZE = 48

DATA_DIR = Path(__file__).parent / "data"
OUTPUT_FILE = DATA_DIR / "enjoei_listings.jsonl"


def fetch_page(client: httpx.Client, term: str, after: str | None) -> dict:
    resp = client.post(
        GRAPHQL_URL,
        headers=HEADERS,
        json={
            "query": SEARCH_QUERY,
            "variables": {"term": term, "first": PAGE_SIZE, "after": after},
        },
        timeout=30.0,
    )
    resp.raise_for_status()
    return resp.json()


def _clean_title(raw: str) -> str:
    t = raw.strip()
    for prefix in ("livro ", "livro- ", "livro-"):
        if t.lower().startswith(prefix):
            t = t[len(prefix):]
            break
    return t.title()


def record_from_node(node: dict) -> dict:
    price_brl = node.get("price", {}).get("current")
    price_str = f"R${price_brl:.2f} BRL" if price_brl is not None else None

    store = node.get("store") or {}
    seller_id = store.get("path") or None

    brand = node.get("brand") or {}
    publisher = brand.get("displayable_name") or None
    # brand field is often the publisher but sometimes just "livro" — discard generic noise
    if publisher and publisher.lower() in ("livro", "livros", "book", "books"):
        publisher = None

    raw_title = (node.get("title") or {}).get("name") or ""
    title = _clean_title(raw_title) if raw_title else None

    path = node.get("path") or ""
    listing_url = f"https://www.enjoei.com.br/{path}" if path else None

    return {
        "territory": "Brazil",
        "platform": "Enjoei",
        "seller_id": seller_id,
        "title": title,
        "author": None,
        "isbn": None,
        "publisher": publisher,
        "publication_year": None,
        "edition": None,
        "language": "pt",
        "pages": None,
        "binding": None,
        "dimensions": None,
        "category": None,
        "condition": "used",
        "price": price_str,
        "listing_url": listing_url,
        "timestamp": None,
        "seller_comments": None,
    }


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
                url = rec.get("listing_url") or ""
                if url:
                    seen.add(url.rstrip("/").split("/")[-1])
            except json.JSONDecodeError:
                pass
    return seen


def crawl_term(
    client: httpx.Client,
    out_fh,
    term: str,
    seen: set[str],
    delay: float,
    limit: int,
    total_written: list[int],
) -> None:
    after: str | None = None
    page_num = 0
    term_written = 0

    while True:
        page_num += 1
        try:
            data = fetch_page(client, term, after)
        except Exception as exc:
            log.error("Fetch error term=%r page=%d: %s", term, page_num, exc)
            time.sleep(10)
            continue

        products = (
            data.get("data", {})
            .get("search", {})
            .get("products", {})
        )
        edges = products.get("edges") or []
        if not edges:
            log.info("Term=%r exhausted after %d pages.", term, page_num - 1)
            break

        new_count = 0
        for edge in edges:
            node = edge.get("node") or {}
            product_id = str(node.get("id") or "")
            if not product_id or product_id in seen:
                continue
            seen.add(product_id)

            rec = record_from_node(node)
            out_fh.write(json.dumps(rec, ensure_ascii=False) + "\n")
            new_count += 1
            total_written[0] += 1
            term_written += 1

            if limit and total_written[0] >= limit:
                log.info("Reached --limit %d. Stopping.", limit)
                out_fh.flush()
                return

        out_fh.flush()
        log.info(
            "Term=%r page=%d: %d edges, %d new. Total written: %d",
            term, page_num, len(edges), new_count, total_written[0],
        )

        if len(edges) < PAGE_SIZE:
            log.info("Term=%r partial page — end of results.", term)
            break

        after = edges[-1]["cursor"]
        time.sleep(delay)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=0)
    ap.add_argument("--delay", type=float, default=0.5)
    args = ap.parse_args()

    DATA_DIR.mkdir(parents=True, exist_ok=True)

    seen = load_seen_ids()
    log.info("Loaded %d existing product IDs.", len(seen))

    total_written = [0]
    client = httpx.Client(follow_redirects=True)

    with open(OUTPUT_FILE, "a", encoding="utf-8") as out_fh:
        for term in SEARCH_TERMS:
            log.info("Starting term: %r", term)
            crawl_term(client, out_fh, term, seen, args.delay, args.limit, total_written)
            if args.limit and total_written[0] >= args.limit:
                break

    log.info("Finished. Total new listings written: %d", total_written[0])


if __name__ == "__main__":
    main()
