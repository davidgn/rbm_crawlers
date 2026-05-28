#!/usr/bin/env python3
"""Probe open book retail/aggregator price surfaces by ISBN/EAN.

This is intentionally a bounded probe, not a fleet spider. It captures price
signals from public/reverse-engineered endpoints found during external repo
intake:

- AbeBooks pricing service from `ravila4/abebooks`
- BookFinder search parsing from `rayment/bookfind`
"""

from __future__ import annotations

import argparse
import csv
import json
import sys
import time
from dataclasses import asdict, dataclass
from html.parser import HTMLParser
from pathlib import Path
from typing import Any
from urllib.parse import parse_qs, quote, urlencode, urlparse

import httpx

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
sys.path.insert(0, str(SRC))

from isbn_utils import normalize_isbn  # noqa: E402


AB_PRICE_URL = "https://www.abebooks.com/servlet/DWRestService/pricingservice"
AB_RECOMMENDATIONS_URL = "https://www.abebooks.com/servlet/RecommendationsApi"
BOOKFINDER_URL = "https://bookfinder.com/search/"
DEFAULT_HEADERS = {
    "Accept": "application/json,text/html,*/*",
    "Accept-Language": "en-US,en;q=0.9",
    "User-Agent": (
        "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 "
        "Chrome/124.0.0.0 Safari/537.36"
    ),
}


@dataclass
class RetailPriceOffer:
    source: str
    ean: str
    status: str
    condition: str | None = None
    price: float | None = None
    currency: str | None = None
    price_text: str | None = None
    title: str | None = None
    publisher: str | None = None
    edition: str | None = None
    language: str | None = None
    listing_url: str | None = None
    seller_comments: str | None = None
    error: str | None = None


def normalize_ean(value: str) -> str:
    ean = normalize_isbn(value)
    if not ean:
        raise ValueError(f"expected ISBN/EAN with 10 or 13 digits, got {value!r}")
    return ean


def parse_money(value: Any) -> float | None:
    if value in (None, ""):
        return None
    text = str(value)
    digits = []
    seen_dot = False
    for char in text:
        if char.isdigit():
            digits.append(char)
        elif char in {".", ","} and not seen_dot:
            digits.append(".")
            seen_dot = True
    if not digits:
        return None
    try:
        return float("".join(digits))
    except ValueError:
        return None


def first_present(payload: dict[str, Any], keys: tuple[str, ...]) -> Any:
    for key in keys:
        if payload.get(key) not in (None, ""):
            return payload[key]
    return None


def parse_abebooks_pricing(ean: str, payload: dict[str, Any]) -> list[RetailPriceOffer]:
    if not payload.get("success", False):
        return [
            RetailPriceOffer(
                source="abebooks-pricing",
                ean=ean,
                status="no_offer",
                error=str(payload.get("error") or payload.get("message") or ""),
            )
        ]

    offers: list[RetailPriceOffer] = []
    for condition, key in (
        ("new", "pricingInfoForBestNew"),
        ("used", "pricingInfoForBestUsed"),
    ):
        info = payload.get(key) or {}
        if not isinstance(info, dict):
            continue
        price_text = first_present(
            info,
            (
                "bestPriceInPurchaseCurrencyWithCurrencySymbol",
                "bestPriceWithCurrencySymbol",
                "bestPriceInPurchaseCurrency",
                "bestPrice",
            ),
        )
        price = parse_money(price_text)
        if price is None:
            continue
        offers.append(
            RetailPriceOffer(
                source="abebooks-pricing",
                ean=ean,
                status="offer",
                condition=condition,
                price=price,
                currency=info.get("purchaseCurrency") or info.get("currency"),
                price_text=str(price_text),
                seller_comments=f"AbeBooks pricing key: {key}",
            )
        )
    return offers or [RetailPriceOffer(source="abebooks-pricing", ean=ean, status="no_offer")]


def query_abebooks_pricing(client: httpx.Client, ean: str) -> list[RetailPriceOffer]:
    try:
        response = client.post(
            AB_PRICE_URL,
            data={
                "action": "getPricingDataByISBN",
                "isbn": ean,
                "container": f"pricingService-{ean}",
            },
            headers=DEFAULT_HEADERS,
        )
        response.raise_for_status()
        return parse_abebooks_pricing(ean, response.json())
    except Exception as exc:
        return [RetailPriceOffer(source="abebooks-pricing", ean=ean, status="error", error=str(exc))]


def query_abebooks_recommendations(client: httpx.Client, ean: str) -> dict[str, Any]:
    try:
        response = client.get(
            AB_RECOMMENDATIONS_URL,
            params={"pageId": "plp", "itemIsbn13": ean},
            headers=DEFAULT_HEADERS,
        )
        response.raise_for_status()
        return response.json()
    except Exception as exc:
        return {"error": str(exc)}


def bookfinder_url(ean: str, currency: str, destination: str, used: bool | None = None) -> str:
    params = {
        "keywords": ean,
        "currency": currency.upper(),
        "destination": destination.lower(),
        "lang": "en",
        "st": "sh",
        "ac": "qr",
        "submit": "",
    }
    if used is True:
        params["condition"] = "used"
    elif used is False:
        params["condition"] = "new"
    return f"{BOOKFINDER_URL}?{urlencode(params, quote_via=quote)}"


class BookFinderParser(HTMLParser):
    SECTION_IGNORE1 = 0
    SECTION_NEW = 1
    SECTION_USED = 2
    SECTION_IGNORE2 = 3

    DATA_NONE = 0
    DATA_TITLE = 1
    DATA_DESCRIPTION = 2
    DATA_PRICE = 3

    DESC_NONE = 0
    DESC_PUBLISHER = 1
    DESC_EDITION = 2
    DESC_LANGUAGE = 3

    def __init__(self, ean: str, currency: str):
        super().__init__()
        self.ean = ean
        self.currency = currency
        self.section = self.SECTION_IGNORE1
        self.title: str | None = None
        self.publisher: str | None = None
        self.edition: str | None = None
        self.language: str | None = None
        self._data_fetch = self.DATA_NONE
        self._desc_fetch = self.DESC_NONE
        self._desc_fetch_tmp = self.DESC_NONE
        self._adding = False
        self._entry = self._blank_entry()
        self.new: list[dict[str, Any]] = []
        self.used: list[dict[str, Any]] = []

    @staticmethod
    def _blank_entry() -> dict[str, Any]:
        return {"price": None, "price_raw": None, "date": None, "url": None, "desc": []}

    def _commit_entry(self) -> None:
        if not self._adding or self._entry.get("price_raw") is None:
            return
        if self.section == self.SECTION_NEW:
            self.new.append(dict(self._entry))
        elif self.section == self.SECTION_USED:
            self.used.append(dict(self._entry))
        self._entry = self._blank_entry()

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        attr = {key: value or "" for key, value in attrs}
        if tag in {"br", "link"}:
            return
        if tag == "a":
            if self._data_fetch == self.DATA_PRICE and attr.get("href"):
                parsed = urlparse(attr["href"])
                target = parse_qs(parsed.query).get("bu", [None])[0]
                self._entry["url"] = target or attr["href"]
            if self._data_fetch == self.DATA_DESCRIPTION:
                self._data_fetch = self.DATA_NONE
            return

        self._data_fetch = self.DATA_NONE
        if attr.get("id") == "describe-isbn-title":
            self._data_fetch = self.DATA_TITLE
        if attr.get("class") == "describe-isbn":
            self._desc_fetch_tmp += 1
            self._desc_fetch += self._desc_fetch_tmp
        if attr.get("class") == "results-table-Logo":
            self._commit_entry()
            self.section += 1
        if "data-price" in attr:
            self._commit_entry()
            self._adding = True
            self._entry = self._blank_entry()
        if attr.get("class") == "results-price":
            self._data_fetch = self.DATA_PRICE
        if "data-pub_date" in attr:
            self._entry["date"] = attr["data-pub_date"]
        if attr.get("class") == "item-note":
            self._data_fetch = self.DATA_DESCRIPTION

    def handle_data(self, data: str) -> None:
        text = data.strip()
        if not text:
            return
        if self._data_fetch == self.DATA_TITLE:
            self.title = text
        elif self._data_fetch == self.DATA_DESCRIPTION:
            self._entry["desc"].append(text)
        elif self._data_fetch == self.DATA_PRICE:
            self._entry["price"] = text
            self._entry["price_raw"] = parse_money(text)
        elif self._desc_fetch == self.DESC_PUBLISHER:
            self.publisher = text
        elif self._desc_fetch == self.DESC_EDITION:
            self.edition = text
        elif self._desc_fetch == self.DESC_LANGUAGE:
            self.language = text
        self._desc_fetch = self.DESC_NONE

    def close(self) -> None:
        self._commit_entry()
        super().close()

    def offers(self, limit: int) -> list[RetailPriceOffer]:
        results: list[RetailPriceOffer] = []
        for condition, entries in (("new", self.new), ("used", self.used)):
            entries = sorted(entries, key=lambda item: item["price_raw"] or 0)
            if limit:
                entries = entries[:limit]
            for entry in entries:
                results.append(
                    RetailPriceOffer(
                        source="bookfinder",
                        ean=self.ean,
                        status="offer",
                        condition=condition,
                        price=entry["price_raw"],
                        currency=self.currency,
                        price_text=entry["price"],
                        title=self.title,
                        publisher=self.publisher,
                        edition=self.edition,
                        language=self.language,
                        listing_url=entry["url"],
                        seller_comments="; ".join(entry["desc"]) or None,
                    )
                )
        return results or [
            RetailPriceOffer(
                source="bookfinder",
                ean=self.ean,
                status="no_offer",
                title=self.title,
                publisher=self.publisher,
                edition=self.edition,
                language=self.language,
            )
        ]


def parse_bookfinder_html(ean: str, html: str, currency: str, limit: int = 5) -> list[RetailPriceOffer]:
    if "AwsWafIntegration" in html or "token.awswaf.com" in html:
        return [
            RetailPriceOffer(
                source="bookfinder",
                ean=ean,
                status="error",
                error="AWS WAF JavaScript challenge",
            )
        ]
    parser = BookFinderParser(ean, currency)
    parser.feed(html)
    parser.close()
    return parser.offers(limit)


def query_bookfinder(
    client: httpx.Client, ean: str, currency: str, destination: str, limit: int
) -> list[RetailPriceOffer]:
    try:
        response = client.get(
            bookfinder_url(ean, currency, destination),
            headers={**DEFAULT_HEADERS, "Accept": "text/html,*/*"},
        )
        response.raise_for_status()
        return parse_bookfinder_html(ean, response.text, currency.upper(), limit=limit)
    except Exception as exc:
        return [RetailPriceOffer(source="bookfinder", ean=ean, status="error", error=str(exc))]


def probe(
    eans: list[str],
    timeout: float,
    currency: str,
    destination: str,
    per_source_limit: int,
    include_recommendations: bool,
) -> dict[str, Any]:
    offers: list[dict[str, Any]] = []
    recommendations: dict[str, Any] = {}
    with httpx.Client(timeout=httpx.Timeout(timeout, connect=min(timeout, 8.0)), follow_redirects=True) as client:
        for ean in eans:
            offers.extend(asdict(offer) for offer in query_abebooks_pricing(client, ean))
            offers.extend(
                asdict(offer)
                for offer in query_bookfinder(client, ean, currency, destination, per_source_limit)
            )
            if include_recommendations:
                recommendations[ean] = query_abebooks_recommendations(client, ean)
    return {
        "generated_at": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
        "inputs": eans,
        "currency": currency.upper(),
        "destination": destination.lower(),
        "offers": offers,
        **({"abebooks_recommendations": recommendations} if include_recommendations else {}),
    }


def write_csv(path: Path, offers: list[dict[str, Any]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    fields = [field.name for field in RetailPriceOffer.__dataclass_fields__.values()]
    with path.open("w", encoding="utf-8", newline="") as fh:
        writer = csv.DictWriter(fh, fieldnames=fields)
        writer.writeheader()
        writer.writerows(offers)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("isbn", nargs="+", help="ISBN-10/13 or EAN values to probe")
    parser.add_argument("--timeout", type=float, default=25.0)
    parser.add_argument("--currency", default="USD")
    parser.add_argument("--destination", default="us")
    parser.add_argument("--per-source-limit", type=int, default=5)
    parser.add_argument("--include-abebooks-recommendations", action="store_true")
    parser.add_argument("--json-out", type=Path)
    parser.add_argument("--csv-out", type=Path)
    args = parser.parse_args()

    try:
        eans = [normalize_ean(value) for value in args.isbn]
    except ValueError as exc:
        print(str(exc), file=sys.stderr)
        return 2

    payload = probe(
        eans,
        timeout=args.timeout,
        currency=args.currency,
        destination=args.destination,
        per_source_limit=args.per_source_limit,
        include_recommendations=args.include_abebooks_recommendations,
    )
    output = json.dumps(payload, ensure_ascii=False, indent=2)
    if args.json_out:
        args.json_out.parent.mkdir(parents=True, exist_ok=True)
        args.json_out.write_text(output + "\n", encoding="utf-8")
    else:
        print(output)
    if args.csv_out:
        write_csv(args.csv_out, payload["offers"])
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
