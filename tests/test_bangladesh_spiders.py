"""
Tests for Bangladesh spider:
  - boibazar_bd_spider (HTML Catalog / BoiBazar Bangladesh)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from boibazar_bd_spider import BoibazarBdSpider
from base_spider import BaseSpider


class TestBoibazarBdSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = BoibazarBdSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = BoibazarBdSpider()
        self.assertEqual(spider.territory, "Bangladesh")

    def test_platform_name(self):
        spider = BoibazarBdSpider()
        self.assertEqual(spider.platform_name, "BoiBazar Bangladesh")

    def test_html_parsing(self):
        spider = BoibazarBdSpider(limit_pages=1)
        spider.CATEGORIES = ["/"]
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_cat_html = """
        <html>
            <body>
                <a href="/book/the-art-of-war-101">The Art of War</a>
            </body>
        </html>
        """

        mock_book_html = """
        <html>
            <body>
                <h1>The Art of War</h1>
                <div>Author : Sun Tzu</div>
                <div>ISBN : 9789847763392</div>
                <div>বইবাজার মূল্য : ৳ ১২০</div>
            </body>
        </html>
        """

        mock_cat_resp = MagicMock()
        mock_cat_resp.status_code = 200
        mock_cat_resp.text = mock_cat_html

        mock_book_resp = MagicMock()
        mock_book_resp.status_code = 200
        mock_book_resp.text = mock_book_html

        def mock_get(url, **kwargs):
            if "the-art-of-war" in url:
                return mock_book_resp
            return mock_cat_resp

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "The Art of War")
        self.assertEqual(item.author, "Sun Tzu")
        self.assertEqual(item.isbn, "9789847763392")
        self.assertEqual(item.price, "120.0")
        self.assertEqual(item.price_currency, "BDT")
        self.assertEqual(item.territory, "Bangladesh")
        self.assertIn("boibazar.com", item.listing_url)


if __name__ == "__main__":
    unittest.main()
