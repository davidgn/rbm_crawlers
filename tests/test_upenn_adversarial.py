import os
import sys
import json
import unittest
from pathlib import Path
from bs4 import BeautifulSoup
from unittest.mock import MagicMock, patch

# Ensure src/ is on sys.path
ROOT = Path(__file__).resolve().parents[1]
SRC_DIR = ROOT / "src"
if str(SRC_DIR) not in sys.path:
    sys.path.insert(0, str(SRC_DIR))

from upenn_bookstore_used_spider import UpennBookstoreUsedSpider
from models import BookListing
from playwright_search_spider import PlaywrightSearchSpider
from isbn_utils import isbn_from_url

class TestUpennBookstoreUsedSpiderAdversarial(unittest.TestCase):
    def setUp(self):
        self.spider = UpennBookstoreUsedSpider(limit_pages=1, limit_items=5)
        self.test_output = ROOT / "tests" / "test_upenn_adversarial_listings.jsonl"
        if self.test_output.exists():
            self.test_output.unlink()
        self.spider.output_file = self.test_output
        self.spider._seen_urls = set()
        self.spider.items_scraped = 0

    def tearDown(self):
        if self.test_output.exists():
            self.test_output.unlink()

    def test_empty_search_page(self):
        """Verify spider handles page with no product containers gracefully."""
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
            self.spider.run(search_term="NonexistentQuery")
            
        self.assertEqual(self.spider.items_scraped, 0)
        self.assertFalse(self.test_output.exists())

    def test_missing_title(self):
        """Verify that an item with missing title is skipped gracefully."""
        # The container is matched, but there is no title element.
        html_content = """
        <div class="product-card">
            <span class="product-author">J.K. Rowling</span>
            <span class="price">$14.99</span>
            <a href="/products/harry-potter">Link</a>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        self.spider._parse_item(container)
        self.assertEqual(self.spider.items_scraped, 0)
        self.assertFalse(self.test_output.exists())

    def test_missing_link_validation_error(self):
        """Verify that missing link causes a validation error (since URL is required) but is caught safely."""
        html_content = """
        <div class="product-card">
            <h3 class="product-title">Harry Potter</h3>
            <span class="product-author">J.K. Rowling</span>
            <span class="price">$14.99</span>
            <!-- No <a> tag or href attribute at all -->
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        # Verify that missing link is caught and handled gracefully without raising an exception
        self.spider._parse_item(container)
        
        self.assertEqual(self.spider.items_scraped, 0)
        self.assertFalse(self.test_output.exists())

    def test_nested_containers(self):
        """Verify behavior when containers are nested inside each other."""
        # Both outer and inner divs match 'container' selectors: div.product-card and div.bnc-product-card
        html_content = """
        <div class="product-card">
            <h3 class="product-title"><a href="/prod-1">Outer Book</a></h3>
            <div class="bnc-product-card">
                <h3 class="product-title"><a href="/prod-1">Inner Book (Same URL)</a></h3>
            </div>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        # In a real run, both would be extracted because they are elements of soup.select(...)
        containers = soup.select(self.spider.selectors['container'])
        self.assertEqual(len(containers), 2)  # both outer and inner match
        
        # Parse first container (outer)
        self.spider._parse_item(containers[0])
        # Parse second container (inner)
        self.spider._parse_item(containers[1])
        
        # Due to seen_urls duplicate filtering, only 1 item should be scraped because they have the same URL
        self.assertEqual(self.spider.items_scraped, 1)

    def test_ambiguous_prices(self):
        """Verify that the first matching price selector is selected, which might not be 'Used' price if New comes first."""
        html_content = """
        <div class="product-card">
            <h3 class="product-title"><a href="/prod-1">Book Title</a></h3>
            <div class="price-section">
                <span class="price-display">$39.99 New</span>
                <span class="price-display">$19.99 Used</span>
            </div>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        self.spider._parse_item(container)
        self.assertEqual(self.spider.items_scraped, 1)
        
        with open(self.test_output, "r") as f:
            data = json.loads(f.readline())
        
        # The parser picks the first matching price selector ($39.99 New), even though this is a Used spider!
        self.assertEqual(data["price"], "39.99")

    def test_price_extraction_comma_bug(self):
        """Verify the bug where a price with commas but no decimal point (e.g. $1,250) is parsed as 1.250."""
        html_content = """
        <div class="product-card">
            <h3 class="product-title"><a href="/prod-1">Rare Book</a></h3>
            <span class="price">$1,250</span>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        self.spider._parse_item(container)
        self.assertEqual(self.spider.items_scraped, 1)
        
        with open(self.test_output, "r") as f:
            data = json.loads(f.readline())
        
        # Under corrected logic, it must be parsed correctly as "1250"
        self.assertEqual(data["price"], "1250")

    def test_author_by_prefix(self):
        """Verify case-sensitivity of the 'By ' prefix stripping."""
        html_content = """
        <div class="product-card">
            <h3 class="product-title"><a href="/prod-1">Book Title</a></h3>
            <span class="product-author">by J.K. Rowling</span>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        self.spider._parse_item(container)
        self.assertEqual(self.spider.items_scraped, 1)
        
        with open(self.test_output, "r") as f:
            data = json.loads(f.readline())
            
        # Under corrected logic, "by " is stripped case-insensitively
        self.assertEqual(data["author"], "J.K. Rowling")

    def test_isbn_10_in_url_extracted(self):
        """Verify that ISBN-10 present in product URLs is successfully extracted and normalized by isbn_from_url."""
        # 0131103628 is a valid ISBN-10 (C Programming Language)
        url_isbn10 = "https://upenn.bncollege.com/products/0131103628"
        extracted = isbn_from_url(url_isbn10)
        self.assertEqual(extracted, "9780131103627")

    def test_invalid_html(self):
        """Verify parser robustness against corrupted/invalid HTML markup."""
        html_content = """
        <div class="product-card" <h3 class="product-title"><a href="/prod-1">Title</a></h3> <span class="price">$10.00
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        self.spider._parse_item(container)
        if container is None:
            self.assertEqual(self.spider.items_scraped, 0)
            self.assertFalse(self.test_output.exists())
        else:
            self.assertEqual(self.spider.items_scraped, 1)
            with open(self.test_output, "r") as f:
                data = json.loads(f.readline())
            self.assertEqual(data["title"], "Title")
            self.assertEqual(data["price"], "10.00")

if __name__ == "__main__":
    unittest.main()
