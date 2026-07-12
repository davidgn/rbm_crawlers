import os
import sys
import json
import unittest
from pathlib import Path
from unittest.mock import MagicMock, patch

# Ensure src/ is on sys.path
ROOT = Path(__file__).resolve().parents[1]
SRC_DIR = ROOT / "src"
if str(SRC_DIR) not in sys.path:
    sys.path.insert(0, str(SRC_DIR))

from upenn_bookstore_used_spider import UpennBookstoreUsedSpider

class TestUPennBookstoreUsedSpiderLiveMock(unittest.TestCase):
    def test_spider_run_and_scrape(self):
        # 1. Setup spider
        spider = UpennBookstoreUsedSpider(limit_pages=1, limit_items=5)
        
        # Override output file to a test location
        test_output = ROOT / "tests" / "test_upenn_verification_listings.jsonl"
        if test_output.exists():
            test_output.unlink()
        spider.output_file = test_output
        spider._seen_urls = set()
        spider.items_scraped = 0

        # Simulated HTML from UPenn Bookstore search page
        simulated_html = """
        <html>
        <body>
            <div class="product-card">
                <div class="product-card-title">
                    <a class="product-title" href="/products/harry-potter-and-the-sorcerers-stone-used">Harry Potter and the Sorcerer's Stone</a>
                </div>
                <div class="by-author">By J.K. Rowling</div>
                <div class="price-display">$14.99</div>
            </div>
            <div class="bnc-product-card">
                <div class="product-title">
                    <a href="/products/intro-to-algorithms-used">Introduction to Algorithms</a>
                </div>
                <div class="author">By Thomas H. Cormen</div>
                <div class="price">$89.99</div>
            </div>
        </body>
        </html>
        """

        # Mock playwright objects
        mock_page = MagicMock()
        mock_page.content.return_value = simulated_html
        mock_page.goto.return_value = MagicMock(status=200)
        
        mock_context = MagicMock()
        mock_context.new_page.return_value = mock_page
        
        mock_browser = MagicMock()
        mock_browser.new_context.return_value = mock_context
        
        mock_browser_close = MagicMock()
        mock_browser.close = mock_browser_close
        
        mock_playwright = MagicMock()
        mock_playwright.chromium.launch.return_value = mock_browser

        # Patch sync_playwright and Stealth
        with patch("playwright_search_spider.sync_playwright") as mock_sync_pw, \
             patch("playwright_search_spider.Stealth") as mock_stealth:
            
            # Setup sync_playwright context manager mock
            mock_sync_pw.return_value.__enter__.return_value = mock_playwright
            
            # Run the spider
            spider.run(search_term="Potter")

        # Verify that we scraped listings
        self.assertEqual(spider.items_scraped, 2)
        self.assertTrue(test_output.exists())

        # Load scraped listings
        listings = []
        with open(test_output, "r", encoding="utf-8") as f:
            for line in f:
                if line.strip():
                    listings.append(json.loads(line))

        # Check listings details
        self.assertEqual(len(listings), 2)
        
        # Check first listing
        self.assertEqual(listings[0]["title"], "Harry Potter and the Sorcerer's Stone")
        self.assertEqual(listings[0]["author"], "J.K. Rowling")
        self.assertEqual(listings[0]["price"], "14.99")
        self.assertEqual(listings[0]["price_currency"], "USD")
        self.assertEqual(listings[0]["listing_url"], "https://upenn.bncollege.com/products/harry-potter-and-the-sorcerers-stone-used")
        
        # Check second listing
        self.assertEqual(listings[1]["title"], "Introduction to Algorithms")
        self.assertEqual(listings[1]["author"], "Thomas H. Cormen")
        self.assertEqual(listings[1]["price"], "89.99")
        self.assertEqual(listings[1]["price_currency"], "USD")
        self.assertEqual(listings[1]["listing_url"], "https://upenn.bncollege.com/products/intro-to-algorithms-used")

        print("\n=== Verification Successful ===")
        print(f"Scraped {len(listings)} listings successfully.")
        for i, item in enumerate(listings, 1):
            print(f"\nListing {i}:")
            print(f"  Title:    {item['title']}")
            print(f"  Author:   {item['author']}")
            print(f"  Price:    {item['price']} {item['price_currency']}")
            print(f"  URL:      {item['listing_url']}")
        print("===============================\n")

        # Cleanup
        if test_output.exists():
            test_output.unlink()

if __name__ == "__main__":
    unittest.main()
