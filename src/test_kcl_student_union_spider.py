import os
import sys
import unittest
import json
import shutil
from pathlib import Path
from unittest.mock import MagicMock, patch

# Ensure src directory is in path
sys.path.insert(0, str(Path(__file__).parent))

from kcl_student_union_spider import KclStudentUnionSpider
from models import BookListing

class TestKclStudentUnionSpider(unittest.TestCase):
    def setUp(self):
        # Create a temporary directory in workspace for testing to isolate files
        self.test_dir = Path(__file__).parent / "test_outputs_kcl"
        self.test_dir.mkdir(exist_ok=True)
        
    def tearDown(self):
        # Clean up temporary test files
        if self.test_dir.exists():
            shutil.rmtree(self.test_dir)

    @patch('playwright_search_spider.sync_playwright')
    @patch('playwright_search_spider.Stealth')
    def test_spider_extraction_robustness(self, mock_stealth, mock_sync_playwright):
        # Setup playwright mock tree
        mock_playwright = MagicMock()
        mock_sync_playwright.return_value.__enter__.return_value = mock_playwright
        
        mock_browser = MagicMock()
        mock_context = MagicMock()
        mock_page = MagicMock()
        
        mock_playwright.chromium.launch.return_value = mock_browser
        mock_browser.new_context.return_value = mock_context
        mock_context.new_page.return_value = mock_page
        
        mock_response = MagicMock()
        mock_response.status = 200
        mock_page.goto.return_value = mock_response
        
        # Define mock HTML variants
        mock_html = """
        <html>
        <body>
            <!-- Item 1: Valid with msl-search-result, isbn in url -->
            <div class="msl-search-result">
                <div class="msl-search-result-title">
                    <a href="/shop/books/harry-potter-philosophers-stone-9781408855652">Harry Potter and the Philosopher's Stone</a>
                </div>
                <span class="msl-search-result-price">£7.99</span>
                <span class="msl-search-result-author">By J.K. Rowling</span>
            </div>
            
            <!-- Item 2: Valid with product-card, isbn in url -->
            <div class="product-card">
                <h3>
                    <a class="product-title" href="/products/9780552124102-the-colour-of-magic">The Colour of Magic</a>
                </h3>
                <span class="price">£6.50</span>
                <p class="author">Terry Pratchett</p>
            </div>
            
            <!-- Item 3: Valid, missing author -->
            <div class="msl-book-listing">
                <h2 class="msl-book-title">
                    <a href="/books/9780141036144-1984">1984</a>
                </h2>
                <span class="msl-book-price">£8.99</span>
            </div>
            
            <!-- Item 4: Missing link href -> skip -->
            <div class="search-result">
                <span class="title">Skipped Book</span>
                <span class="price">£10.00</span>
            </div>
            
            <!-- Item 5: Missing title -> skip -->
            <div class="product-list-item">
                <a href="/books/no-title-9780000000000">Link only</a>
            </div>
            
            <!-- Item 6: Was/Now price -> should pick Now price -->
            <div class="msl-book-card">
                <div class="msl-book-title">
                    <a href="/books/9780007270613-the-hobbit">The Hobbit</a>
                </div>
                <div class="msl-book-price">Was £9.99 Now £5.99</div>
                <div class="msl-book-author">J.R.R. Tolkien</div>
            </div>
        </body>
        </html>
        """
        mock_page.content.return_value = mock_html
        
        # Initialize spider
        spider = KclStudentUnionSpider(limit_pages=1, limit_items=10)
        
        # Redirect outputs to test directory
        spider.output_dir = self.test_dir / "data"
        spider.cache_dir = self.test_dir / "cache"
        spider.output_file = spider.output_dir / "kcl_student_union_listings.jsonl"
        spider.output_dir.mkdir(parents=True, exist_ok=True)
        spider.cache_dir.mkdir(parents=True, exist_ok=True)
        
        # Run spider
        spider.run(search_term="TestBook")
        
        # Verify output exists
        self.assertTrue(spider.output_file.exists(), "Output file was not created")
        
        # Read extracted listings
        listings = []
        with open(spider.output_file, 'r', encoding='utf-8') as f:
            for line in f:
                if line.strip():
                    listings.append(json.loads(line.strip()))
                    
        # We expect exactly 4 extracted listings (Item 1, 2, 3, 6).
        # Item 4 should be skipped (missing href).
        # Item 5 should be skipped (missing title).
        self.assertEqual(len(listings), 4, f"Expected 4 listings, but found {len(listings)}")
        
        # Check Item 1
        item1 = next(item for item in listings if "Harry Potter" in item["title"])
        self.assertEqual(item1["price"], "7.99")
        self.assertEqual(item1["price_currency"], "GBP")
        self.assertEqual(item1["author"], "J.K. Rowling")
        self.assertEqual(item1["isbn"], "9781408855652")
        self.assertEqual(item1["listing_url"], "https://www.kclsu.org/shop/books/harry-potter-philosophers-stone-9781408855652")
        self.assertEqual(item1["territory"], "United Kingdom")
        self.assertEqual(item1["platform"], "KCL Student Union (King's College London)")
        
        # Check Item 2
        item2 = next(item for item in listings if "The Colour of Magic" in item["title"])
        self.assertEqual(item2["price"], "6.50")
        self.assertEqual(item2["price_currency"], "GBP")
        self.assertEqual(item2["author"], "Terry Pratchett")
        self.assertEqual(item2["isbn"], "9780552124102")
        
        # Check Item 3 (Missing author)
        item3 = next(item for item in listings if "1984" in item["title"])
        self.assertEqual(item3["price"], "8.99")
        self.assertEqual(item3["price_currency"], "GBP")
        self.assertIsNone(item3["author"])
        self.assertEqual(item3["isbn"], "9780141036144")
        
        # Check Item 6 (Was/Now price selection)
        item6 = next(item for item in listings if "The Hobbit" in item["title"])
        self.assertEqual(item6["price"], "5.99")
        self.assertEqual(item6["price_currency"], "GBP")
        self.assertEqual(item6["author"], "J.R.R. Tolkien")
        self.assertEqual(item6["isbn"], "9780007270613")

    @patch('playwright_search_spider.sync_playwright')
    @patch('playwright_search_spider.Stealth')
    def test_spider_empty_response(self, mock_stealth, mock_sync_playwright):
        # Setup playwright mock tree
        mock_playwright = MagicMock()
        mock_sync_playwright.return_value.__enter__.return_value = mock_playwright
        mock_browser = MagicMock()
        mock_context = MagicMock()
        mock_page = MagicMock()
        
        mock_playwright.chromium.launch.return_value = mock_browser
        mock_browser.new_context.return_value = mock_context
        mock_context.new_page.return_value = mock_page
        
        mock_response = MagicMock()
        mock_response.status = 200
        mock_page.goto.return_value = mock_response
        mock_page.content.return_value = "<html><body></body></html>"
        
        spider = KclStudentUnionSpider(limit_pages=1)
        spider.output_dir = self.test_dir / "data"
        spider.cache_dir = self.test_dir / "cache"
        spider.output_file = spider.output_dir / "kcl_student_union_listings.jsonl"
        spider.output_dir.mkdir(parents=True, exist_ok=True)
        spider.cache_dir.mkdir(parents=True, exist_ok=True)
        
        # Running spider on empty content should not raise an error
        try:
            spider.run(search_term="TestBook")
        except Exception as e:
            self.fail(f"run() raised Exception unexpectedly on empty page: {e}")
            
        # Since it's empty, no output file should be created (no items found, so save_item never called)
        self.assertFalse(spider.output_file.exists(), "Output file was created but no items should be found")

if __name__ == "__main__":
    unittest.main()
