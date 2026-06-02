"""
reBuy DE sell-price spider — ISBN-to-buyback-price lookup (Germany).

Platform: reBuy Recommerce GmbH
Territory: Germany
Mode: ISBN/EAN → sell price (what reBuy pays customers for used books)

API: mobile.rebuy.com blue search (internal Android app API)
  GET /blue/search?q={isbn}&page=1&page_size=1
  Auth: Sloth VDF cookie `wafsc_vdf_sloth` (valid 24 h once solved)

VDF algorithm (Sloth, 50 iterations):
  y = normalizeToQR(sha256(challenge), prime)  # Euler criterion → QR
  for _ in range(50): y = pow(y, (prime+1)//4, prime)
  cookie = f"{time}|{ip}|50|{y:x}"

Response field of interest: products.docs[0].price_purchase (EUR cents).
All grade variants (A1–A4) carry the same purchase price for books.

Usage:
  echo "9783551551672" | python rebuy_de_sell_spider.py
  python rebuy_de_sell_spider.py --isbn-file isbns.txt
  python rebuy_de_sell_spider.py --limit 100   # first N ISBNs from file
"""

import argparse
import json
import re
import sys
import time
import httpx
from models import BookListing
from base_spider import BaseSpider

SEARCH_URL = "https://mobile.rebuy.com/blue/search"
CHALLENGE_URL = f"{SEARCH_URL}?q=probe"
LISTING_URL_TMPL = "https://www.rebuy.de/i/{product_id}"

_HEADERS = {
    "User-Agent": (
        "Mozilla/5.0 (Linux; Android 13; Pixel 7) "
        "AppleWebKit/537.36 (KHTML, like Gecko) "
        "Chrome/124.0.0.0 Mobile Safari/537.36"
    ),
    "Accept": "application/json",
    "Accept-Language": "de-DE,de;q=0.9,en;q=0.8",
}


def _solve_vdf(challenge: dict) -> str:
    prime = int(challenge["prime"], 16)
    v = int(challenge["input"], 16) % prime
    # normalizeToQR: Euler's criterion
    if pow(v, (prime - 1) // 2, prime) != 1:
        v = prime - v
    exp = (prime + 1) // 4
    for _ in range(challenge["t"]):
        v = pow(v, exp, prime)
    return f"{challenge['time']}|{challenge['ip']}|{challenge['t']}|{v:x}"


class RebuyDeSellSpider(BaseSpider):
    """
    reBuy DE sell-price spider.

    Accepts ISBNs/EANs from stdin or --isbn-file and looks up what reBuy pays
    for each via the internal mobile API (/blue/search). The VDF WAF challenge
    is solved once per run (~30 s) and reused for the session (24 h validity).
    """

    def __init__(self, isbn_file: str = None, limit: int = 0):
        super().__init__(platform_name="reBuy DE Sell", territory="Germany")
        self.isbn_file = isbn_file
        self.limit = limit
        self.client = httpx.Client(
            timeout=30.0,
            follow_redirects=True,
            headers=_HEADERS,
        )
        self._vdf_cookie: str = ""

    def _refresh_vdf(self) -> None:
        self.logger.info("Solving Sloth VDF for mobile.rebuy.com (takes ~30 s)…")
        resp = self.client.get(CHALLENGE_URL)
        m = re.search(r"var args = ({[^;]+});", resp.text)
        if not m:
            raise RuntimeError("No VDF challenge found — page format changed?")
        challenge = json.loads(m.group(1))
        self.logger.info(
            "Challenge: time=%s ip=%s t=%d", challenge["time"], challenge["ip"], challenge["t"]
        )
        self._vdf_cookie = _solve_vdf(challenge)
        self.logger.info("VDF solved.")

    def _search(self, isbn: str) -> dict | None:
        url = f"{SEARCH_URL}?q={isbn}&page=1&page_size=1"
        for attempt in range(3):
            try:
                resp = self.client.get(url, headers={"Cookie": f"wafsc_vdf_sloth={self._vdf_cookie}"})
                if resp.status_code == 429:
                    if attempt == 0:
                        self.logger.warning("VDF cookie rejected — refreshing…")
                        self._refresh_vdf()
                        continue
                    self.logger.error("Still 429 after VDF refresh for %s", isbn)
                    return None
                resp.raise_for_status()
                return resp.json()
            except Exception as exc:
                self.logger.error("Request error for %s: %s", isbn, exc)
                if attempt < 2:
                    time.sleep(2)
        return None

    def _isbns(self):
        if self.isbn_file:
            with open(self.isbn_file, encoding="utf-8") as fh:
                for line in fh:
                    val = line.strip()
                    if val:
                        yield val
        else:
            for line in sys.stdin:
                val = line.strip()
                if val:
                    yield val

    def run(self):
        self._refresh_vdf()

        count = 0
        for isbn in self._isbns():
            if self.limit and count >= self.limit:
                break

            data = self._search(isbn)
            if data is None:
                continue

            docs = data.get("products", {}).get("docs", [])
            if not docs:
                self.logger.debug("No match for ISBN %s", isbn)
                count += 1
                time.sleep(0.15)
                continue

            doc = docs[0]
            product_id = doc.get("id")
            title = doc.get("name") or doc.get("basic_name") or ""
            price_cents = doc.get("price_purchase") or 0

            if not title:
                count += 1
                continue

            listing_url = LISTING_URL_TMPL.format(product_id=product_id)

            self.save_item(BookListing(
                territory=self.territory,
                platform=self.platform_name,
                title=title,
                isbn=isbn,
                price=f"EUR {price_cents / 100:.2f}" if price_cents else None,
                listing_url=listing_url,
            ))

            self.logger.info("ISBN %s → id=%s '%s' price=EUR %.2f", isbn, product_id, title, price_cents / 100)
            count += 1
            time.sleep(0.15)

        self.client.close()
        self.logger.info("Done. %d ISBNs processed, %d items saved.", count, self.items_scraped)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="reBuy DE sell-price spider (ISBN lookup)")
    parser.add_argument("--isbn-file", metavar="FILE", help="File with one ISBN/EAN per line")
    parser.add_argument("--limit", type=int, default=0, help="Max ISBNs to process (0=unlimited)")
    args = parser.parse_args()
    RebuyDeSellSpider(isbn_file=args.isbn_file, limit=args.limit).run()
