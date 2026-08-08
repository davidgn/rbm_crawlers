"""
Tests for Papua New Guinea spider:
  - bilumbooks_pg_spider (HTML Catalog / Bilum Books)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from bilumbooks_pg_spider import BilumbooksPgSpider
from base_spider import BaseSpider


class TestBilumbooksPgSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = BilumbooksPgSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = BilumbooksPgSpider()
        self.assertEqual(spider.territory, "Papua New Guinea")

    def test_platform_name(self):
        spider = BilumbooksPgSpider()
        self.assertEqual(spider.platform_name, "Bilum Books")

    def test_html_parsing(self):
        spider = BilumbooksPgSpider(limit_pages=1)
        spider.CATALOG_PAGES = ["past-exam-questions/"]
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_html = """
        <html>
            <body>
                <h2>Study Guide - ENGLISH PNG Grades 7 & 8</h2>
                <h4>Spelling and Word Study for Papua New Guinea</h4>
            </body>
        </html>
        """
        mock_response = MagicMock()
        mock_response.status_code = 200
        mock_response.text = mock_html

        with patch.object(spider.session, "get", return_value=mock_response):
            spider.run()

        self.assertGreaterEqual(len(emitted), 2)
        item = emitted[0]
        self.assertEqual(item.price_currency, "PGK")
        self.assertEqual(item.territory, "Papua New Guinea")
        self.assertIn("bilumbooks.com", item.listing_url)


if __name__ == "__main__":
    unittest.main()
