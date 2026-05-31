"""
MyPustak spider — India used/new books platform (mypustak.com).

API: Typesense search cluster (public read-only key, exposed in frontend bundle)
     Host:       ew5h2tr67livkp41p-1.a1.typesense.net
     Collection: books_collection
     Key:        ynYXfz3KuyLdSvLrMitLZWtsOImkATlb  (search-only, client-visible)
     Endpoint:   POST /multi_search?x-typesense-api-key=...

Scale: ~386k in-stock listings, 622k total (including sold-out).
Strategy: paginate through the full catalogue in pages of 250, exclude the
          embedding vector field (768-dim float array, not useful for us),
          apply isOutOfStock:n to capture active listings only.

Listing URL: https://www.mypustak.com/search?value={isbn} (fallback: title)

Fields captured per record:
    title, author, isbn, price, mrp, bookCondition, language, publication,
    binding, slug, bookId, categoryPathId, imageUrl, isOutOfStock
"""

import argparse
import json
import re
import time
import httpx
from models import BookListing
from base_spider import BaseSpider

TYPESENSE_HOST = "https://ew5h2tr67livkp41p-1.a1.typesense.net"
TYPESENSE_KEY  = "ynYXfz3KuyLdSvLrMitLZWtsOImkATlb"
MULTI_SEARCH_URL = f"{TYPESENSE_HOST}/multi_search?x-typesense-api-key={TYPESENSE_KEY}"
COLLECTION = "books_collection"
PAGE_SIZE  = 250


class MyPustakSpider(BaseSpider):
    """
    MyPustak (mypustak.com) — India used/donated/free book platform.

    400k+ downloads; 30k+ titles in stock; pan-India delivery.
    Catalogue served through a public Typesense search cluster whose
    read-only API key is embedded in the Next.js frontend bundle.
    """

    def __init__(self, limit_pages: int = 0, include_sold_out: bool = False):
        super().__init__(platform_name="MyPustak", territory="India")
        self.limit_pages     = limit_pages        # 0 = unlimited
        self.include_sold_out = include_sold_out
        self.client = httpx.Client(
            timeout=30.0,
            follow_redirects=True,
            headers={
                "Content-Type": "application/json",
                "Accept": "application/json",
            },
        )

    def _build_search(self, page: int) -> dict:
        search: dict = {
            "q": "*",
            "query_by": "isbn,title,author,publication",
            "per_page": PAGE_SIZE,
            "page": page,
            "sort_by": "num_is_out_of_stack:asc,iDate:desc",
            "exclude_fields": "embedding",
            "collection": COLLECTION,
        }
        if not self.include_sold_out:
            search["filter_by"] = "isOutOfStock:n"
        return search

    def run(self):
        self.logger.info(
            "Starting MyPustak harvest (Typesense). limit_pages=%d include_sold_out=%s",
            self.limit_pages, self.include_sold_out,
        )

        page = 1
        total_found = None

        try:
            while True:
                if self.limit_pages and page > self.limit_pages:
                    self.logger.info("Reached page limit %d — stopping.", self.limit_pages)
                    break

                try:
                    resp = self.client.post(
                        MULTI_SEARCH_URL,
                        json={"searches": [self._build_search(page)]},
                    )
                    resp.raise_for_status()
                except Exception as e:
                    self.logger.error("Request error on page %d: %s", page, e)
                    break

                data = resp.json()
                result = data.get("results", [{}])[0]

                if "error" in result:
                    self.logger.error("Typesense error on page %d: %s", page, result["error"])
                    break

                if total_found is None:
                    total_found = result.get("found", 0)
                    max_pages = (total_found + PAGE_SIZE - 1) // PAGE_SIZE
                    self.logger.info(
                        "Catalogue: %d matching books (%d pages at %d/page)",
                        total_found, max_pages, PAGE_SIZE,
                    )

                hits = result.get("hits", [])
                if not hits:
                    self.logger.info("No hits on page %d — done.", page)
                    break

                for hit in hits:
                    self._save_book(hit["document"])

                self.logger.info(
                    "Page %d/%d: %d hits, %d total saved",
                    page,
                    (total_found + PAGE_SIZE - 1) // PAGE_SIZE if total_found else "?",
                    len(hits),
                    self.items_scraped,
                )

                if page * PAGE_SIZE >= (total_found or 0):
                    self.logger.info("Reached last page — done.")
                    break

                page += 1
                time.sleep(0.3)

        finally:
            self.client.close()

        self.logger.info("Finished. %d items saved.", self.items_scraped)

    def _save_book(self, doc: dict):
        book_id   = doc.get("bookId") or doc.get("id", "")
        title     = (doc.get("title") or "").strip() or "Cached Item"
        author    = doc.get("author", "") or ""
        isbn      = doc.get("isbn", "") or ""
        price_raw = doc.get("price") or doc.get("mrp") or ""
        price     = str(price_raw) if price_raw else ""
        pub       = doc.get("publication", "") or ""
        lang      = doc.get("language", "") or ""
        binding   = doc.get("binding", "") or ""
        slug      = doc.get("slug", "") or ""
        image_url = doc.get("imageUrl", "") or ""

        # bookCondition is a list; take first value
        cond_list = doc.get("bookCondition") or []
        condition = cond_list[0] if cond_list else ""

        # Category breadcrumb
        cat_path = ", ".join(
            p.split("|", 1)[-1] for p in (doc.get("categoryPathId") or [])
        )

        listing_url = (
            f"https://www.mypustak.com/search?value={isbn}"
            if isbn
            else f"https://www.mypustak.com/search?value={slug or title}"
        )

        item_id = re.sub(r"[^a-zA-Z0-9_-]", "_", str(book_id))[:80] if book_id else str(int(time.time()))

        self.cache_html(
            item_id,
            _doc_to_html(doc, title, author, isbn, price, condition, pub, lang,
                         binding, cat_path, image_url, listing_url),
            url=listing_url,
        )

        self.save_item(BookListing(
            territory=self.territory,
            platform=self.platform_name,
            title=title,
            price=price,
            author=author,
            condition=condition,
            listing_url=listing_url,
            isbn=isbn,
        ))


def _doc_to_html(doc, title, author, isbn, price, condition, pub, lang,
                 binding, cat_path, image_url, listing_url) -> str:
    raw_json = json.dumps({k: v for k, v in doc.items() if k != "embedding"}, ensure_ascii=False)
    return f"""<!DOCTYPE html>
<html>
<head><meta charset="utf-8"><title>{title}</title></head>
<body>
<h1>{title}</h1>
<p class="author">{author}</p>
<p class="isbn">ISBN: {isbn}</p>
<p class="price">₹{price}</p>
<p class="condition">{condition}</p>
<p class="publisher">{pub}</p>
<p class="language">{lang}</p>
<p class="binding">{binding}</p>
<p class="category">{cat_path}</p>
<p class="listing-url"><a href="{listing_url}">{listing_url}</a></p>
<img src="{image_url}" alt="Book cover">
<script type="application/json" id="raw-api-data">{raw_json}</script>
</body>
</html>"""


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="MyPustak India Typesense spider")
    parser.add_argument("--limit", type=int, default=0,
                        help="Max pages to fetch (default: 0 = unlimited)")
    parser.add_argument("--include-sold-out", action="store_true",
                        help="Include out-of-stock listings (default: in-stock only)")
    args = parser.parse_args()
    MyPustakSpider(limit_pages=args.limit, include_sold_out=args.include_sold_out).run()
