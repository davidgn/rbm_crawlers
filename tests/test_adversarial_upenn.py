import os
import sys
import unittest
import json
from pathlib import Path
from bs4 import BeautifulSoup
from pydantic import ValidationError

# Ensure src/ is on sys.path
ROOT = Path(__file__).resolve().parents[1]
SRC_DIR = ROOT / "src"
if str(SRC_DIR) not in sys.path:
    sys.path.insert(0, str(SRC_DIR))

from upenn_bookstore_used_spider import UpennBookstoreUsedSpider
from models import BookListing

class TestAdversarialUpennBookstoreUsedSpider(unittest.TestCase):
    def setUp(self):
        self.spider = UpennBookstoreUsedSpider(limit_pages=1, limit_items=5)
        # Use a temporary test file for output
        self.test_output = ROOT / "tests" / "test_upenn_adversarial_listings.jsonl"
        if self.test_output.exists():
            self.test_output.unlink()
        self.spider.output_file = self.test_output
        self.spider._seen_urls = set()
        self.spider.items_scraped = 0

    def tearDown(self):
        if self.test_output.exists():
            self.test_output.unlink()

    def test_missing_title(self):
        # Scenario 1: Container matches, but has no title element.
        html_content = """
        <div class="product-card">
            <span class="product-author">By J.K. Rowling</span>
            <span class="price">$14.99</span>
            <a class="some-random-link" href="/products/harry-potter-used">Link</a>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        # _parse_item should return None early without raising an error or writing to file
        self.spider._parse_item(container)
        self.assertEqual(self.spider.items_scraped, 0)
        self.assertFalse(self.test_output.exists())

    def test_broad_title_selector(self):
        # Verify that class='product-title-link' matches due to overly broad selectors
        html_content = """
        <div class="product-card">
            <span class="product-author">By J.K. Rowling</span>
            <span class="price">$14.99</span>
            <a class="product-title-link" href="/products/harry-potter-used">Link</a>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        self.spider._parse_item(container)
        self.assertEqual(self.spider.items_scraped, 1)

    def test_missing_listing_url(self):
        # Scenario 2: Container has a title and price, but no href/link element.
        html_content = """
        <div class="product-card">
            <h3 class="product-title">Harry Potter and the Sorcerer's Stone</h3>
            <span class="product-author">By J.K. Rowling</span>
            <span class="price">$14.99</span>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        # Since link is missing, listing_url becomes None.
        # BookListing requires listing_url to be str.
        # This will raise a ValidationError during instantiation.
        # We verify that a ValidationError is indeed raised by BookListing under these inputs.
        with self.assertRaises(ValidationError):
            BookListing(
                territory=self.spider.territory,
                platform=self.spider.platform_name,
                title="Harry Potter",
                listing_url=None
            )

        # Verify calling _parse_item handles it gracefully without raising an error
        self.spider._parse_item(container)
        self.assertEqual(self.spider.items_scraped, 0)
        self.assertFalse(self.test_output.exists())

    def test_missing_price(self):
        # Scenario 3: Container has title and link, but no price element.
        html_content = """
        <div class="product-card">
            <h3 class="product-title">
                <a href="/products/harry-potter-used">Harry Potter</a>
            </h3>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        self.spider._parse_item(container)
        self.assertEqual(self.spider.items_scraped, 1)
        
        with open(self.test_output, "r", encoding="utf-8") as f:
            data = json.loads(f.read().strip())
        
        self.assertEqual(data["title"], "Harry Potter")
        self.assertIsNone(data["price"])
        self.assertEqual(data["price_currency"], "USD")

    def test_missing_author(self):
        # Scenario 4: Container has title, link, price, but no author element.
        html_content = """
        <div class="product-card">
            <h3 class="product-title">
                <a href="/products/harry-potter-used">Harry Potter</a>
            </h3>
            <span class="price">$14.99</span>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        self.spider._parse_item(container)
        self.assertEqual(self.spider.items_scraped, 1)
        
        with open(self.test_output, "r", encoding="utf-8") as f:
            data = json.loads(f.read().strip())
        
        self.assertIsNone(data["author"])

    def test_sale_vs_original_price(self):
        # Scenario 5: Dual prices display (original vs sale/used).
        # Often sites show: "Was $19.99, now $14.99"
        html_content = """
        <div class="product-card">
            <h3 class="product-title">
                <a href="/products/harry-potter-used">Harry Potter</a>
            </h3>
            <span class="price">Was $19.99, now $14.99</span>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        self.spider._parse_item(container)
        
        with open(self.test_output, "r", encoding="utf-8") as f:
            data = json.loads(f.read().strip())
        
        # Under corrected logic, it must match the sale price "$14.99"
        self.assertEqual(data["price"], "14.99")

    def test_preceding_unrelated_link(self):
        # Scenario 6: There is an unrelated link (e.g. category, image) before the actual title link
        html_content = """
        <div class="product-card">
            <a href="/category/books" class="unrelated-category">Category Link</a>
            <h3 class="product-title">
                <a href="/products/harry-potter-used">Harry Potter</a>
            </h3>
            <span class="price">$14.99</span>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        self.spider._parse_item(container)
        
        with open(self.test_output, "r", encoding="utf-8") as f:
            data = json.loads(f.read().strip())
            
        # The tightened link selector should now match the actual product title link
        self.assertEqual(data["listing_url"], "https://upenn.bncollege.com/products/harry-potter-used")

    def test_malformed_html(self):
        # Scenario 7: Malformed/invalid HTML markup.
        html_content = """
        <div class="product-card">
            <h3 class="product-title">
                <a href="/products/harry-potter-used">Harry Potter
            </h3>
            <span class="price">$14.99
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        self.spider._parse_item(container)
        self.assertEqual(self.spider.items_scraped, 1)
        
        with open(self.test_output, "r", encoding="utf-8") as f:
            data = json.loads(f.read().strip())
            
        self.assertEqual(data["title"], "Harry Potter")
        self.assertEqual(data["price"], "14.99")

    def test_non_numeric_price(self):
        # Scenario 8: Price element contains non-numeric text like "Free" or "Out of Stock"
        html_content = """
        <div class="product-card">
            <h3 class="product-title">
                <a href="/products/harry-potter-used">Harry Potter</a>
            </h3>
            <span class="price">Out of stock</span>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        self.spider._parse_item(container)
        self.assertEqual(self.spider.items_scraped, 1)
        
        with open(self.test_output, "r", encoding="utf-8") as f:
            data = json.loads(f.read().strip())
            
        self.assertIsNone(data["price"])

if __name__ == "__main__":
    unittest.main()
