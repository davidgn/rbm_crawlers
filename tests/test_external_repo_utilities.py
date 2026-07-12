import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SCRIPTS = ROOT / "scripts"
FIXTURES = ROOT / "tests" / "fixtures"

from extract_book_text_signals import extract_signals  # noqa: E402
from evaluate_isbnlib import compare_value  # noqa: E402
from generate_rare_book_links import build_links, links_from_text  # noqa: E402
from probe_buyback_endpoints import (  # noqa: E402
    normalize_ean,
    parse_bonavendi_offers,
    parse_bonavendi_product,
    parse_momox_offer,
    parse_rebuy_offer,
)
from probe_kitabu_marketplace import (  # noqa: E402
    enrich_from_detail,
    parse_filter_response,
    parse_listing_summary,
)
from probe_retail_price_endpoints import (  # noqa: E402
    bookfinder_url,
    parse_abebooks_pricing,
    parse_bookfinder_html,
)


def test_book_text_signal_extractor_flags_rare_old_book():
    text = """
    The Left Hand of Darkness
    by Ursula K. Le Guin
    First Edition
    Copyright 1969
    ISBN 0-441-47812-3
    """

    signals = extract_signals(text)

    assert signals["isbns"] == ["0441478123"]
    assert signals["oldest_year"] == 1969
    assert "first edition" in signals["edition_flags"]
    assert signals["title_guess"] == "The Left Hand of Darkness"
    assert signals["author_guess"] == "Ursula K. Le Guin"
    assert signals["needs_manual_review"] is True


def test_momox_parser_extracts_offer():
    offer = parse_momox_offer(
        "9783442481754",
        {"status": "offer", "price": "2.31", "product": {"title": "Der Schwarm"}},
    )

    assert offer.source == "momox"
    assert offer.status == "offer"
    assert offer.price == 2.31
    assert offer.title == "Der Schwarm"


def test_buyback_probe_normalizes_isbn10_to_ean13():
    assert normalize_ean("0-306-40615-2") == "9780306406157"


def test_rebuy_parser_extracts_matching_identifier_offer():
    offer = parse_rebuy_offer(
        "9783442481754",
        {
            "purchasable": [
                {
                    "product": {
                        "identifiers_ean": ["9783442481754"],
                        "identifiers_isbn": ["3442481759"],
                        "price_purchase": 281,
                        "name": "Der Schwarm",
                    }
                }
            ]
        },
    )

    assert offer.source == "rebuy"
    assert offer.status == "offer"
    assert offer.price == 2.81
    assert offer.title == "Der Schwarm"


def test_bonavendi_parsers_sort_partner_offers():
    uuid, title = parse_bonavendi_product({"payload": {"uuid": "abc", "name": "Der Schwarm"}})
    offers = parse_bonavendi_offers(
        "9783442481754",
        title,
        {
            "payload": [
                {"price": 1.2, "partner": {"name": "A"}},
                {"price": 3.4, "partner": {"name": "B"}},
                {"price": 0, "partner": {"name": "Ignored"}},
            ]
        },
    )

    assert uuid == "abc"
    assert [offer.partner for offer in offers] == ["B", "A"]
    assert [offer.price for offer in offers] == [3.4, 1.2]


def test_kitabu_summary_parser_normalizes_public_listing():
    listing = parse_listing_summary(
        {
            "postId": "abc-123",
            "exchangeType": "SELL",
            "createdDate": "2025-02-23T00:36:18",
            "regionName": "Tashkent city",
            "genreNames": "Scientific popular",
            "authorName": "Jack C. Richards",
            "attach": {"url": "https://api.kitabu.uz/api/v1/kb/attach/open/book.jpg"},
            "title": "Tactics for Listening",
            "status": "ACTIVE",
            "printType": "PAPER_BOOK",
            "price": 5000.0,
        }
    )

    assert listing is not None
    assert listing.post_id == "abc-123"
    assert listing.title == "Tactics for Listening"
    assert listing.price == 5000.0
    assert listing.currency == "UZS"
    assert listing.listing_url.endswith("/api/v1/kb/post/public/abc-123")


def test_kitabu_filter_parser_keeps_pagination_metadata():
    listings, page = parse_filter_response(
        {
            "data": {
                "content": [{"postId": "abc-123", "title": "Book", "price": 0}],
                "number": 0,
                "size": 10,
                "totalElements": 38,
                "totalPages": 4,
                "last": False,
            }
        }
    )

    assert len(listings) == 1
    assert page["total_elements"] == 38
    assert page["total_pages"] == 4


def test_kitabu_detail_enrichment_redacts_profile_contact_payload():
    listing = parse_listing_summary({"postId": "abc-123", "title": "Book"})
    assert listing is not None

    enriched = enrich_from_detail(
        listing,
        {
            "data": {
                "description": "Seller description",
                "conditionType": "USED",
                "bookLanguage": "LATIN",
                "marketPrice": 100000.0,
                "profile": {"name": "Seller", "phone": "911234567"},
            }
        },
    )

    payload = enriched.__dict__
    assert payload["description"] == "Seller description"
    assert payload["condition"] == "USED"
    assert "profile" not in payload
    assert "phone" not in payload


def test_rare_book_link_generator_builds_manual_review_links():
    links = build_links(
        isbn="0-306-40615-2",
        title="The Left Hand of Darkness",
        author="Ursula K. Le Guin",
        year=1969,
    )

    assert "9780306406157" in links["abebooks_isbn"]
    assert "bookfinder.com/search/" in links["bookfinder_isbn"]
    assert "vialibri.net/searches" in links["vialibri_manual_search"]
    assert "year_min=1969" in links["vialibri_manual_search"]
    assert "addall.com/SuperRare/UsedRare.cgi" in links["addall_used_rare"]


def test_rare_book_links_from_text_include_signals_and_links():
    payload = links_from_text(
        """
        The Left Hand of Darkness
        by Ursula K. Le Guin
        First printing 1969
        ISBN 0-441-47812-3
        """
    )

    assert payload["signals"]["needs_manual_review"] is True
    assert payload["links"]["open_library_isbn"].startswith("https://openlibrary.org/api/books?")
    assert payload["links"]["vialibri_manual_search"].startswith("https://www.vialibri.net/searches?")


def test_isbnlib_evaluator_keeps_local_normalization_as_canonical():
    comparison = compare_value("0-306-40615-2")

    assert comparison["local_normalize_isbn"] == "9780306406157"
    if comparison["isbnlib"]["available"]:
        assert comparison["same_ean13"] is True


def test_local_isbn_normalization_rejects_invalid_13_digit_blob():
    comparison = compare_value("9783442481754")

    assert comparison["local_normalize_isbn"] is None
    if comparison["isbnlib"]["available"]:
        assert comparison["same_ean13"] is False


def test_abebooks_pricing_parser_extracts_new_and_used():
    offers = parse_abebooks_pricing(
        "9780062941503",
        {
            "success": True,
            "pricingInfoForBestNew": {
                "bestPriceInPurchaseCurrencyWithCurrencySymbol": "US$ 12.50",
                "purchaseCurrency": "USD",
            },
            "pricingInfoForBestUsed": {
                "bestPriceInPurchaseCurrencyWithCurrencySymbol": "US$ 4.25",
                "purchaseCurrency": "USD",
            },
        },
    )

    assert [(offer.condition, offer.price, offer.currency) for offer in offers] == [
        ("new", 12.50, "USD"),
        ("used", 4.25, "USD"),
    ]


def test_abebooks_pricing_parser_accepts_live_observed_shape():
    payload = json.loads((FIXTURES / "abebooks_pricing_9780140449136.json").read_text())

    offers = parse_abebooks_pricing("9780140449136", payload)

    assert [(offer.condition, offer.price, offer.price_text) for offer in offers] == [
        ("new", 12.50, "US$ 12.50"),
        ("used", 6.87, "US$ 6.87"),
    ]
    assert all(offer.status == "offer" for offer in offers)


def test_bookfinder_url_uses_expected_query_shape():
    url = bookfinder_url("9780140449136", "usd", "us")

    assert url.startswith("https://bookfinder.com/search/?")
    assert "keywords=9780140449136" in url
    assert "currency=USD" in url
    assert "destination=us" in url
    assert "st=sh" in url


def test_bookfinder_parser_extracts_sorted_used_and_new_offers():
    html = """
    <span id="describe-isbn-title">The Odyssey</span>
    <span class="describe-isbn">Penguin Classics</span>
    <span class="describe-isbn">Revised</span>
    <span class="describe-isbn">English</span>
    <div class="results-table-Logo"></div>
    <div data-price="12.50" data-pub_date="2003">
      <span class="results-price"><a href="/redirect?bu=https%3A%2F%2Fshop.example%2Fnew">US$ 12.50</a></span>
      <span class="item-note">New copy</span>
    </div>
    <div class="results-table-Logo"></div>
    <div data-price="5.25" data-pub_date="2003">
      <span class="results-price"><a href="/redirect?bu=https%3A%2F%2Fshop.example%2Fused-a">US$ 5.25</a></span>
      <span class="item-note">Used copy A</span>
    </div>
    <div data-price="4.25" data-pub_date="2001">
      <span class="results-price"><a href="/redirect?bu=https%3A%2F%2Fshop.example%2Fused-b">US$ 4.25</a></span>
      <span class="item-note">Used copy B</span>
    </div>
    """

    offers = parse_bookfinder_html("9780140449136", html, "USD")

    assert [offer.condition for offer in offers] == ["new", "used", "used"]
    assert [offer.price for offer in offers] == [12.50, 4.25, 5.25]
    assert offers[0].title == "The Odyssey"
    assert offers[0].publisher == "Penguin Classics"
    assert offers[0].edition == "Revised"
    assert offers[0].language == "English"
    assert offers[1].listing_url == "https://shop.example/used-b"


def test_bookfinder_parser_reports_aws_waf_challenge_as_error():
    offers = parse_bookfinder_html(
        "9780140449136",
        '<script src="https://example.token.awswaf.com/challenge.js"></script>'
        "<script>AwsWafIntegration.getToken()</script>",
        "USD",
    )

    assert len(offers) == 1
    assert offers[0].status == "error"
    assert offers[0].error == "AWS WAF JavaScript challenge"
