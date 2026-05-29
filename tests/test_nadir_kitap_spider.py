import sys
from pathlib import Path

from bs4 import BeautifulSoup


ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
sys.path.insert(0, str(SRC))

from nadir_kitap_spider import NadirKitapSpider  # noqa: E402


def test_nadir_kitap_extracts_apk_confirmed_detail_links_only():
    spider = NadirKitapSpider(limit_pages=1, query="asimov")
    try:
        soup = BeautifulSoup(
            """
            <a href="/kitap-detay.php?kid=12345">Book</a>
            <a href="https://www.nadirkitap.com/kitap-detay.php?kid=12345">Dup</a>
            <a href="/sahaf-detay.php?uyeid=777">Seller</a>
            <a href="https://example.test/kitap-detay.php?kid=999">Off-site</a>
            """,
            "html.parser",
        )

        links = spider._extract_links(soup, seen=set())
    finally:
        spider.client.close()

    assert links == ["https://www.nadirkitap.com/kitap-detay.php?kid=12345"]


def test_nadir_kitap_cache_redaction_removes_contact_channels():
    spider = NadirKitapSpider(limit_pages=1)
    try:
        redacted = spider._redacted_cache_html(
            """
            <html><body>
              <a href="mailto:seller@example.test">seller@example.test</a>
              <a href="tel:+905551112233">+90 555 111 22 33</a>
              <p>Telefon: +90 555 111 22 33</p>
              <p>ISBN: 9780306406157</p>
            </body></html>
            """
        )
    finally:
        spider.client.close()

    assert "seller@example.test" not in redacted
    assert "mailto:" not in redacted
    assert "tel:" not in redacted
    assert "+90 555 111 22 33" not in redacted
    assert "9780306406157" in redacted
