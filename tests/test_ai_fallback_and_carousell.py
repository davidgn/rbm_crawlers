from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"

import ai_extractor  # noqa: E402
import carousell_ph_spider  # noqa: E402


class FakeProcess:
    def __init__(self, returncode, stdout="", stderr=""):
        self.returncode = returncode
        self.stdout = stdout
        self.stderr = stderr

    def communicate(self, input=None):
        return self.stdout, self.stderr


def test_ai_quota_failure_uses_local_metadata_fallback(monkeypatch):
    monkeypatch.setattr(
        ai_extractor.subprocess,
        "Popen",
        lambda *args, **kwargs: FakeProcess(1, stderr="TerminalQuotaError: QUOTA_EXHAUSTED"),
    )
    html = """
    <html><head><title>Example Book | Store</title></head>
    <body>ISBN 978-0-306-40615-7 Price $ 12.50</body></html>
    """

    result = ai_extractor.deep_extract(html)

    assert result["title"] == "Example Book"
    assert result["isbn"] == "9780306406157"
    assert result["price"] == "$ 12.50"
    assert result["extraction_method"] == "local_bs4_fallback"


def test_malformed_ai_json_uses_local_fallback(monkeypatch):
    monkeypatch.setattr(
        ai_extractor.subprocess,
        "Popen",
        lambda *args, **kwargs: FakeProcess(0, stdout="not-json"),
    )

    result = ai_extractor.deep_extract("<h1>Fallback Title</h1>")

    assert result["title"] == "Fallback Title"
    assert result["extraction_method"] == "local_bs4_fallback"


def test_valid_ai_json_is_returned(monkeypatch):
    monkeypatch.setattr(
        ai_extractor.subprocess,
        "Popen",
        lambda *args, **kwargs: FakeProcess(
            0,
            stdout='```json\n{"title": "Parsed", "isbn": "9780306406157"}\n```',
        ),
    )

    assert ai_extractor.deep_extract("<html></html>") == {
        "title": "Parsed",
        "isbn": "9780306406157",
        "extraction_method": "gemini_ai",
    }


def test_invalid_platform_selector_preserves_general_fallback(monkeypatch):
    monkeypatch.setitem(
        ai_extractor.PLATFORM_SELECTORS,
        "Broken Store",
        {"title": "h1["},
    )

    result = ai_extractor.local_fallback_extract(
        "<html><head><title>Fallback Book | Store</title></head></html>",
        platform="Broken Store",
    )

    assert result["title"] == "Fallback Book"
    assert result["extraction_method"] == "local_bs4_fallback"


def test_carousell_harvest_caches_source_url_and_closes_page(monkeypatch):
    class FakePage:
        def __init__(self):
            self.closed = False
            self.visited = []

        def goto(self, url, **kwargs):
            self.visited.append(url)

        def wait_for_timeout(self, milliseconds):
            assert milliseconds == 2000

        def content(self):
            return "<html><h1>Cached listing</h1></html>"

        def close(self):
            self.closed = True

    class FakeContext:
        def __init__(self, page):
            self.page = page

        def new_page(self):
            return self.page

    class FakeStealth:
        def apply_stealth_sync(self, page):
            return None

    page = FakePage()
    spider = carousell_ph_spider.CarousellPhSpider(limit_pages=1)
    cached = {}
    saved = []
    monkeypatch.setattr(carousell_ph_spider, "Stealth", FakeStealth)
    monkeypatch.setattr(
        spider,
        "cache_html",
        lambda item_id, html, url="": cached.update(
            {"item_id": item_id, "html": html, "url": url}
        ),
    )
    monkeypatch.setattr(spider, "save_item", saved.append)
    url = "https://www.carousell.ph/p/example-book-123456789/"

    spider._harvest_item(FakeContext(page), url)

    assert cached == {
        "item_id": "123456789",
        "html": "<html><h1>Cached listing</h1></html>",
        "url": url,
    }
    assert saved[0].listing_url == url
    assert page.closed is True
