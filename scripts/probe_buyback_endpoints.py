#!/usr/bin/env python3
"""Probe reverse-engineered DACH book buyback endpoints by ISBN/EAN.

This is intentionally a probe, not a spider: it captures fixed-price buyback
signals from operator APIs and writes structured JSON for later review.
"""

from __future__ import annotations

import argparse
import json
import os
import sys
import time
from dataclasses import dataclass, asdict
from pathlib import Path
from typing import Any

import httpx

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
sys.path.insert(0, str(SRC))

from isbn_utils import normalize_isbn  # noqa: E402


MOMOX_URL = "https://api.momox.de/api/v4/media/offer/"
REBUY_URL = "https://www.rebuy.de/verkaufen/api/bulk-isbn"
BONAVENDI_PRODUCT_URL = "https://api.bonavendi.de/rest/v2/products/{ean}"
BONAVENDI_OFFERS_URL = (
    "https://api.bonavendi.de/rest/v2/products/{uuid}/buyOffers"
    "?maxAgeOfOfferInMinutes=-1"
)


@dataclass
class BuybackOffer:
    source: str
    ean: str
    status: str
    price: float | None = None
    currency: str | None = "EUR"
    title: str | None = None
    partner: str | None = None
    raw_status: str | None = None
    error: str | None = None


def normalize_ean(value: str) -> str:
    ean = normalize_isbn(value)
    if not ean:
        raise ValueError(f"expected ISBN/EAN with 10 or 13 digits, got {value!r}")
    return ean


def parse_momox_offer(ean: str, payload: dict[str, Any]) -> BuybackOffer:
    status = str(payload.get("status") or "")
    raw_price = payload.get("price")
    price = float(raw_price) if raw_price not in (None, "") else None
    title = payload.get("title") or payload.get("name")
    return BuybackOffer(
        source="momox",
        ean=ean,
        status="offer" if status == "offer" and price is not None else "no_offer",
        price=price,
        title=str(title) if title else None,
        raw_status=status or None,
    )


def parse_rebuy_offer(ean: str, payload: dict[str, Any]) -> BuybackOffer:
    for item in payload.get("purchasable") or []:
        product = item.get("product") or {}
        eans = [str(v) for v in product.get("identifiers_ean") or []]
        isbns = [str(v) for v in product.get("identifiers_isbn") or []]
        if ean not in eans and ean not in isbns:
            continue
        raw_price = product.get("price_purchase")
        price = float(raw_price) / 100 if raw_price not in (None, "") else None
        return BuybackOffer(
            source="rebuy",
            ean=ean,
            status="offer" if price is not None else "no_offer",
            price=price,
            title=product.get("name") or product.get("title"),
        )
    return BuybackOffer(source="rebuy", ean=ean, status="no_offer")


def parse_bonavendi_product(payload: dict[str, Any]) -> tuple[str | None, str | None]:
    product = payload.get("payload") or {}
    return product.get("uuid"), product.get("name")


def parse_bonavendi_offers(
    ean: str, title: str | None, payload: dict[str, Any], limit: int = 8
) -> list[BuybackOffer]:
    offers = []
    for offer in payload.get("payload") or []:
        raw_price = offer.get("price")
        if raw_price in (None, "") or float(raw_price) <= 0:
            continue
        partner = (offer.get("partner") or {}).get("name")
        offers.append(
            BuybackOffer(
                source="bonavendi",
                ean=ean,
                status="offer",
                price=float(raw_price),
                title=title,
                partner=partner,
            )
        )
    offers.sort(key=lambda item: item.price or 0, reverse=True)
    return offers[:limit] or [BuybackOffer(source="bonavendi", ean=ean, status="no_offer", title=title)]


def error_offer(source: str, ean: str, exc: Exception) -> BuybackOffer:
    return BuybackOffer(source=source, ean=ean, status="error", error=str(exc))


def query_momox(client: httpx.Client, ean: str, token: str | None) -> BuybackOffer:
    if not token:
        return BuybackOffer(
            source="momox",
            ean=ean,
            status="skipped",
            error="set MOMOX_TOKEN or pass --momox-token",
        )
    try:
        response = client.get(
            MOMOX_URL,
            params={"ean": ean},
            headers={
                "X-API-TOKEN": token,
                "X-MARKETPLACE-ID": "momox_de",
                "User-Agent": "momox/11.0 (Android)",
                "Accept": "application/json",
            },
        )
        response.raise_for_status()
        return parse_momox_offer(ean, response.json())
    except Exception as exc:
        return error_offer("momox", ean, exc)


def query_rebuy(client: httpx.Client, ean: str) -> BuybackOffer:
    try:
        response = client.post(
            REBUY_URL,
            json={"identifiers": ean},
            headers={
                "X-Requested-With": "XMLHttpRequest",
                "User-Agent": (
                    "Mozilla/5.0 (Linux; Android 13) AppleWebKit/537.36 "
                    "Chrome/120.0.0.0 Mobile Safari/537.36"
                ),
                "Accept": "application/json",
            },
        )
        response.raise_for_status()
        return parse_rebuy_offer(ean, response.json())
    except Exception as exc:
        return error_offer("rebuy", ean, exc)


def query_bonavendi(client: httpx.Client, ean: str) -> list[BuybackOffer]:
    headers = {
        "Content-Type": "application/x-www-form-urlencoded",
        "X-ApiVersion": "2.0",
        "Origin": "https://www.bonavendi.de",
    }
    try:
        product_response = client.post(BONAVENDI_PRODUCT_URL.format(ean=ean), headers=headers)
        product_response.raise_for_status()
        uuid, title = parse_bonavendi_product(product_response.json())
        if not uuid:
            return [BuybackOffer(source="bonavendi", ean=ean, status="no_offer", title=title)]
        offers_response = client.post(BONAVENDI_OFFERS_URL.format(uuid=uuid), headers=headers)
        offers_response.raise_for_status()
        return parse_bonavendi_offers(ean, title, offers_response.json())
    except Exception as exc:
        return [error_offer("bonavendi", ean, exc)]


def probe(eans: list[str], momox_token: str | None, timeout: float) -> dict[str, Any]:
    results = []
    with httpx.Client(timeout=httpx.Timeout(timeout, connect=min(timeout, 8.0))) as client:
        for ean in eans:
            results.append(asdict(query_momox(client, ean, momox_token)))
            results.append(asdict(query_rebuy(client, ean)))
            results.extend(asdict(offer) for offer in query_bonavendi(client, ean))
    return {
        "generated_at": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
        "inputs": eans,
        "offers": results,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("isbn", nargs="+", help="ISBN-10/13 or EAN values to probe")
    parser.add_argument("--momox-token", default=os.environ.get("MOMOX_TOKEN"))
    parser.add_argument("--timeout", type=float, default=20.0)
    parser.add_argument("--json-out", type=Path)
    args = parser.parse_args()

    try:
        eans = [normalize_ean(value) for value in args.isbn]
    except ValueError as exc:
        print(str(exc), file=sys.stderr)
        return 2

    payload = probe(eans, args.momox_token, args.timeout)
    output = json.dumps(payload, ensure_ascii=False, indent=2)
    if args.json_out:
        args.json_out.parent.mkdir(parents=True, exist_ok=True)
        args.json_out.write_text(output + "\n", encoding="utf-8")
    else:
        print(output)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
