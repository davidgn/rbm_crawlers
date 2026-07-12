import os
import sys
import unittest
from pathlib import Path
from bs4 import BeautifulSoup

# Ensure src/ is on sys.path
ROOT = Path(__file__).resolve().parents[1]
SRC_DIR = ROOT / "src"
if str(SRC_DIR) not in sys.path:
    sys.path.insert(0, str(SRC_DIR))

from upenn_bookstore_used_spider import UpennBookstoreUsedSpider
from models import BookListing

class TestUpennBookstoreUsedSpider(unittest.TestCase):
    def setUp(self):
        self.spider = UpennBookstoreUsedSpider(limit_pages=1, limit_items=5)
        # Use a temporary test file for output
        self.test_output = ROOT / "tests" / "test_upenn_listings.jsonl"
        self.spider.output_file = self.test_output
        self.spider._seen_urls = set()
        self.spider.items_scraped = 0

    def tearDown(self):
        if self.test_output.exists():
            self.test_output.unlink()

    def test_parse_item_success(self):
        html_content = """
        <div class="product-card">
            <h3 class="product-title">
                <a href="/products/harry-potter-and-the-sorcerers-stone-used">Harry Potter and the Sorcerer's Stone</a>
            </h3>
            <span class="product-author">By J.K. Rowling</span>
            <span class="price">$14.99</span>
        </div>
        """
        soup = BeautifulSoup(html_content, "html.parser")
        container = soup.select_one(self.spider.selectors['container'])
        
        self.spider._parse_item(container)
        
        self.assertEqual(self.spider.items_scraped, 1)
        self.assertTrue(self.test_output.exists())
        
        # Read the saved listing
        import json
        with open(self.test_output, "r", encoding="utf-8") as f:
            lines = f.readlines()
        
        self.assertEqual(len(lines), 1)
        data = json.loads(lines[0])
        
        self.assertEqual(data["title"], "Harry Potter and the Sorcerer's Stone")
        self.assertEqual(data["author"], "J.K. Rowling")
        self.assertEqual(data["price"], "14.99")
        self.assertEqual(data["price_currency"], "USD")
        self.assertEqual(data["listing_url"], "https://upenn.bncollege.com/products/harry-potter-and-the-sorcerers-stone-used")
        self.assertEqual(data["platform"], "UPenn Bookstore")
        self.assertEqual(data["territory"], "United States")

if __name__ == "__main__":
    unittest.main()
