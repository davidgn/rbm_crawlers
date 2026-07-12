import os
import sys
import json
import pytest
from pathlib import Path
from bs4 import BeautifulSoup
from unittest.mock import MagicMock, patch

# Ensure src/ is on sys.path
ROOT = Path(__file__).resolve().parents[1]
SRC_DIR = ROOT / "src"
if str(SRC_DIR) not in sys.path:
    sys.path.insert(0, str(SRC_DIR))

from lse_student_union_spider import LseStudentUnionSpider
from models import BookListing

def test_empty_search_page():
    """Verify spider handles page with no product containers gracefully."""
    spider = LseStudentUnionSpider(limit_pages=1, limit_items=5)
    html = "<html><body><div class='no-results'>No books found</div></body></html>"
    
    mock_page = MagicMock()
    mock_page.content.return_value = html
    mock_page.goto.return_value = MagicMock(status=200)
    
    mock_context = MagicMock()
    mock_context.new_page.return_value = mock_page
    
    mock_browser = MagicMock()
    mock_browser.new_context.return_value = mock_context
    mock_browser.close = MagicMock()
    
    mock_playwright = MagicMock()
    mock_playwright.chromium.launch.return_value = mock_browser

    with patch("playwright_search_spider.sync_playwright") as mock_sync_pw, \
         patch("playwright_search_spider.Stealth") as mock_stealth:
        mock_sync_pw.return_value.__enter__.return_value = mock_playwright
        
        # Run spider, should not raise exception and should scrape 0 items
        spider.run(search_term="NonexistentQuery")
        
    assert spider.items_scraped == 0


@pytest.mark.parametrize(
    "price_input, expected_price, expected_currency",
    [
        ("£34.99", "34.99", "GBP"),
        ("34.99", "34.99", "GBP"),
        ("Free", None, "GBP"),
        ("N/A", None, "GBP"),
        ("GBP 12", "12", "GBP"),
        ("£34,99", "34.99", "GBP"),
        ("£1,234.56", "1234.56", "GBP"),
        ("£1.234,56", "1234.56", "GBP"),
        ("£1,25", "1.25", "GBP"),
        ("Was £45.00, now £35.00", "35.00", "GBP"),
        ("£45.00 (Sale price £35.00)", "35.00", "GBP"),
        ("£45.00 / £35.00", "35.00", "GBP"),
    ],
)
def test_price_formats(price_input, expected_price, expected_currency):
    """Verify that different price formats are parsed correctly."""
    spider = LseStudentUnionSpider(limit_items=1)
    saved_items = []
    spider.save_item = saved_items.append

    mock_html = f"""
    <div class="msl-search-result">
      <h3 class="msl-search-result-title"><a href="/books/textbook-123">Introduction to Economics</a></h3>
      <span class="msl-search-result-price">{price_input}</span>
      <span class="msl-search-result-author">By N. Gregory Mankiw</span>
    </div>
    """
    soup = BeautifulSoup(mock_html, "html.parser").select_one(".msl-search-result")
    spider._parse_item(soup)

    assert len(saved_items) == 1
    item = saved_items[0]
    assert item.price == expected_price
    assert item.price_currency == expected_currency


def test_missing_price_element():
    """Verify handling when the price element is missing entirely."""
    spider = LseStudentUnionSpider(limit_items=1)
    saved_items = []
    spider.save_item = saved_items.append

    mock_html = """
    <div class="msl-search-result">
      <h3 class="msl-search-result-title"><a href="/books/textbook-123">Introduction to Economics</a></h3>
      <span class="msl-search-result-author">By N. Gregory Mankiw</span>
    </div>
    """
    soup = BeautifulSoup(mock_html, "html.parser").select_one(".msl-search-result")
    spider._parse_item(soup)

    assert len(saved_items) == 1
    item = saved_items[0]
    assert item.price is None
    assert item.price_currency == "GBP"


@pytest.mark.parametrize(
    "author_input, expected_author",
    [
        ("By Gregory Mankiw", "Gregory Mankiw"),
        ("by Gregory Mankiw", "Gregory Mankiw"),
        ("BY Gregory Mankiw", "Gregory Mankiw"),
        ("  by Gregory Mankiw  ", "Gregory Mankiw"),
        ("Bylaws of economics", "Bylaws of economics"),
        ("", ""),
        ("   ", ""),
    ],
)
def test_author_formats(author_input, expected_author):
    """Verify that author prefixes are stripped case-insensitively, and whitespace is stripped."""
    spider = LseStudentUnionSpider(limit_items=1)
    saved_items = []
    spider.save_item = saved_items.append

    mock_html = f"""
    <div class="msl-search-result">
      <h3 class="msl-search-result-title"><a href="/books/textbook-123">Introduction to Economics</a></h3>
      <span class="msl-search-result-price">£34.99</span>
      <span class="msl-search-result-author">{author_input}</span>
    </div>
    """
    soup = BeautifulSoup(mock_html, "html.parser").select_one(".msl-search-result")
    spider._parse_item(soup)

    assert len(saved_items) == 1
    item = saved_items[0]
    assert item.author == expected_author


def test_missing_author_element():
    """Verify handling when the author element is missing entirely."""
    spider = LseStudentUnionSpider(limit_items=1)
    saved_items = []
    spider.save_item = saved_items.append

    mock_html = """
    <div class="msl-search-result">
      <h3 class="msl-search-result-title"><a href="/books/textbook-123">Introduction to Economics</a></h3>
      <span class="msl-search-result-price">£34.99</span>
    </div>
    """
    soup = BeautifulSoup(mock_html, "html.parser").select_one(".msl-search-result")
    spider._parse_item(soup)

    assert len(saved_items) == 1
    item = saved_items[0]
    assert item.author is None


@pytest.mark.parametrize(
    "html_markup",
    [
        # Missing title
        """
        <div class="msl-search-result">
          <span class="msl-search-result-price">£34.99</span>
          <span class="msl-search-result-author">Gregory Mankiw</span>
        </div>
        """,
        # Empty title text
        """
        <div class="msl-search-result">
          <h3 class="msl-search-result-title"><a href="/books/123">  </a></h3>
          <span class="msl-search-result-price">£34.99</span>
        </div>
        """,
        # Missing link/anchor
        """
        <div class="msl-search-result">
          <h3 class="msl-search-result-title">Introduction to Economics</h3>
          <span class="msl-search-result-price">£34.99</span>
        </div>
        """,
        # Anchor missing href
        """
        <div class="msl-search-result">
          <h3 class="msl-search-result-title"><a>Introduction to Economics</a></h3>
          <span class="msl-search-result-price">£34.99</span>
        </div>
        """,
    ],
)
def test_missing_required_fields(html_markup):
    """Verify that listings missing title or URL are skipped gracefully."""
    spider = LseStudentUnionSpider(limit_items=1)
    saved_items = []
    spider.save_item = saved_items.append

    soup = BeautifulSoup(html_markup, "html.parser").select_one(".msl-search-result")
    spider._parse_item(soup)

    assert len(saved_items) == 0


def test_pydantic_validation_error_handling():
    """Verify that Pydantic ValidationError during item parsing is caught gracefully and listing is skipped."""
    # Force a validation error by initializing spider with territory=None (which is required by BookListing)
    spider = LseStudentUnionSpider(limit_items=1, territory=None)
    saved_items = []
    spider.save_item = saved_items.append

    mock_html = """
    <div class="msl-search-result">
      <h3 class="msl-search-result-title"><a href="/books/textbook-123">Introduction to Economics</a></h3>
      <span class="msl-search-result-price">£34.99</span>
      <span class="msl-search-result-author">Gregory Mankiw</span>
    </div>
    """
    soup = BeautifulSoup(mock_html, "html.parser").select_one(".msl-search-result")
    spider._parse_item(soup)

    assert len(saved_items) == 0


def test_corrupted_html():
    """Verify parser robustness against corrupted/invalid HTML markup."""
    spider = LseStudentUnionSpider(limit_items=1)
    saved_items = []
    spider.save_item = saved_items.append

    mock_html = """
    <div class="msl-search-result" <h3 class="msl-search-result-title"><a href="/books/123">Introduction to Economics</a></h3> <span class="msl-search-result-price">£34.99</span>
    """
    soup = BeautifulSoup(mock_html, "html.parser").select_one(".msl-search-result")
    spider._parse_item(soup)

    # BeautifulSoup's parser should be able to make sense of this and extract what it can.
    # If the parser successfully builds the tree, it should parse correctly.
    if soup is not None:
        title_el = soup.select_one(spider.selectors['title'])
        link_el = soup.select_one(spider.selectors.get('link', 'a'))
        if title_el and link_el and link_el.has_attr('href'):
            assert len(saved_items) == 1
            assert saved_items[0].title == "Introduction to Economics"
            assert saved_items[0].price == "34.99"
        else:
            assert len(saved_items) == 0
    else:
        assert len(saved_items) == 0
