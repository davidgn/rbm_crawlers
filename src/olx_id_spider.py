import argparse
import json
import re
from urllib.parse import quote

from base_spider import BaseSpider
from configurable_marketplace_spider import MarketplaceConfig
from models import BookListing


CONFIG = MarketplaceConfig(
    platform_name="OLX Indonesia Books",
    territory="Indonesia",
    base_url="https://www.olx.co.id",
    browse_paths=("/buku-cetak-digital_c220/q-buku-bekas",),
    detail_signals=("/item/",),
    allowed_hosts=("apollo.olx.co.id",),
    headers={"Accept-Language": "id-ID,id;q=0.9,en;q=0.8"},
)


class OLXIndonesiaBooksSpider(BaseSpider):
    SEARCH_URL = (
        "https://www.olx.co.id/api/relevance/v5/search?"
        "category=220&facet_limit=100&location=4000030&location_facet_limit=20"
        "&platform=web-desktop&query=buku%20bekas&relaxedfilters=true"
        "&spellcheck=true&user=19e2a064bd8x35b3ae1a"
    )
    REFERER = "https://www.olx.co.id/buku-cetak-digital_c220/q-buku-bekas"

    def __init__(self, limit_pages: int = 1, limit_items: int = 50):
        super().__init__(platform_name=CONFIG.platform_name, territory=CONFIG.territory)
        self.limit_pages = limit_pages
        self.limit_items = limit_items
        from curl_cffi import requests as curl_requests

        self.session = curl_requests.Session(impersonate="chrome124")

    def run(self):
        payload = self._get_json(self.SEARCH_URL)
        if not payload:
            self.logger.warning("Could not fetch OLX Indonesia search JSON")
            return
        self.cache_html("api_relevance_v5_search_buku_bekas", json.dumps(payload, ensure_ascii=False), url=self.SEARCH_URL)
        for item in payload.get("data", [])[: self.limit_items]:
            listing = self._listing_from_api(item)
            if listing:
                self.save_item(listing)

    def _get_json(self, url: str) -> dict | None:
        headers = {
            "Accept": "application/json, text/plain, */*",
            "Accept-Language": "id-ID,id;q=0.9,en;q=0.8",
            "Referer": self.REFERER,
        }
        response = self.session.get(url, headers=headers, timeout=25)
        if "application/json" in response.headers.get("content-type", ""):
            return response.json()
        if not self._solve_interstitial(response.text, headers):
            return None
        response = self.session.get(url, headers=headers, timeout=25)
        if "application/json" not in response.headers.get("content-type", ""):
            return None
        return response.json()

    def _solve_interstitial(self, html: str, headers: dict[str, str]) -> bool:
        seed_match = re.search(r'var i = (\d+);.*?Number\("(\d+)" \+ "(\d+)"\)', html, re.S)
        token_match = re.search(r'JSON\.stringify\(\{"bm-verify": "([^"]+)", "pow": j\}\)', html)
        if not seed_match or not token_match:
            return False
        proof = int(seed_match.group(1)) + int(seed_match.group(2) + seed_match.group(3))
        verify_headers = {**headers, "Content-Type": "application/json", "Origin": CONFIG.base_url}
        response = self.session.post(
            f"{CONFIG.base_url}/_sec/verify?provider=interstitial",
            headers=verify_headers,
            data=json.dumps({"bm-verify": token_match.group(1), "pow": proof}),
            timeout=25,
        )
        return response.status_code == 200 and "reload" in response.text

    def _listing_from_api(self, item: dict) -> BookListing | None:
        title = self._clean_text(item.get("title"))
        item_id = self._clean_text(item.get("id") or item.get("ad_id"))
        if not title or not item_id:
            return None
        price = None
        price_value = item.get("price", {}).get("value") if isinstance(item.get("price"), dict) else None
        if isinstance(price_value, dict):
            price = self._clean_text(price_value.get("display"))
        location = self._location_text(item)
        description = self._clean_text(item.get("description"))
        comments = " | ".join(part for part in (description, location) if part)
        return BookListing(
            territory=self.territory,
            platform=self.platform_name,
            seller_id=self._clean_text(item.get("user_id") or item.get("user_name")),
            title=title,
            condition="Used",
            price=price,
            listing_url=f"{CONFIG.base_url}/item/{self._slug(title)}-iid-{item_id}",
            seller_comments=comments or None,
        )

    def _location_text(self, item: dict) -> str | None:
        locations = item.get("locations_resolved") or item.get("locations") or []
        if not isinstance(locations, list):
            return None
        names = []
        for location in locations:
            if isinstance(location, dict) and location.get("name"):
                names.append(str(location["name"]))
        return ", ".join(names) or None

    def _slug(self, text: str) -> str:
        stripped = re.sub(r"[^a-z0-9]+", "-", text.lower()).strip("-")
        return quote(stripped or "item")

    def _clean_text(self, value) -> str | None:
        if value in (None, "", []):
            return None
        return re.sub(r"\s+", " ", str(value)).strip()


def main():
    parser = argparse.ArgumentParser(description="OLX Indonesia used-books API spider")
    parser.add_argument("--limit-pages", type=int, default=1)
    parser.add_argument("--limit-items", type=int, default=50)
    args = parser.parse_args()
    OLXIndonesiaBooksSpider(limit_pages=args.limit_pages, limit_items=args.limit_items).run()


if __name__ == "__main__":
    main()
