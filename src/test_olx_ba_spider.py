import os
import unittest
from pathlib import Path
from olx_ba_spider import OlxBASpider
from models import BookListing

class TestOlxBASpider(unittest.TestCase):

    def setUp(self):
        self.spider = OlxBASpider(limit_pages=1, limit_items=5)
        self.cache_dir = Path(__file__).parent / "cache" / "olx bosnia books"

    def test_parse_detail_page_76600106(self):
        file_path = self.cache_dir / "olx_ba__artikal_76600106.html"
        if not file_path.exists():
            self.skipTest("Cached file 76600106 not found")

        html_content = file_path.read_text(encoding="utf-8")
        url = "https://olx.ba/artikal/76600106"
        listing = self.spider.parse_detail_page(html_content, url)

        self.assertIsNotNone(listing)
        self.assertIsInstance(listing, BookListing)
        self.assertEqual(listing.territory, "Bosnia and Herzegovina")
        self.assertEqual(listing.platform, "OLX_BA")
        self.assertEqual(listing.title, "Kada telo kaže ne - Gabor Mate")
        self.assertEqual(listing.price, "23")
        self.assertEqual(listing.price_currency, "BAM")
        self.assertEqual(listing.isbn, "9788660361051")
        self.assertEqual(listing.listing_url, url)

    def test_all_cached_artikal_pages(self):
        if not self.cache_dir.exists():
            self.skipTest("Cache directory not found")
            
        artikal_files = list(self.cache_dir.glob("olx_ba__artikal_*.html"))
        self.assertGreater(len(artikal_files), 0, "No cached artikal files found")
        
        parsed_count = 0
        for filepath in artikal_files:
            art_id = filepath.name.replace("olx_ba__artikal_", "").replace(".html", "")
            url = f"https://olx.ba/artikal/{art_id}"
            html_content = filepath.read_text(encoding="utf-8")
            
            listing = self.spider.parse_detail_page(html_content, url)
            self.assertIsNotNone(listing, f"Failed to parse listing for {filepath.name}")
            self.assertIsInstance(listing, BookListing)
            self.assertEqual(listing.territory, "Bosnia and Herzegovina")
            self.assertEqual(listing.platform, "OLX_BA")
            self.assertEqual(listing.price_currency, "BAM")
            self.assertTrue(len(listing.title) > 0)
            parsed_count += 1
            
        print(f"\nSuccessfully verified {parsed_count} cached detail pages!")

if __name__ == "__main__":
    unittest.main()
