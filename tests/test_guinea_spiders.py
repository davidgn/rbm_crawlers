"""
Tests for Guinea spiders:
  - editionsganndal_gn_spider (HTML Catalog / Éditions Ganndal Guinea)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from editionsganndal_gn_spider import EditionsganndalGnSpider
from base_spider import BaseSpider


class TestEditionsganndalGnSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = EditionsganndalGnSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = EditionsganndalGnSpider()
        self.assertEqual(spider.territory, "Guinea")

    def test_platform_name(self):
        spider = EditionsganndalGnSpider()
        self.assertEqual(spider.platform_name, "Editions Ganndal Guinea")

    def test_html_parsing(self):
        spider = EditionsganndalGnSpider(limit_pages=1)
        spider.CATEGORIES = ["/catalogue"]
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_cat_html = """
        <html>
            <body>
                <a href="/books/former-les-eleves-pour-ameliorer-le-monde">Former les élèves pour améliorer le monde</a>
            </body>
        </html>
        """

        mock_item_html = """
        <html>
            <body>
                <h1>Former les élèves pour améliorer le monde</h1>
                <div>ISBN: 9782375650123</div>
            </body>
        </html>
        """

        mock_cat_resp = MagicMock()
        mock_cat_resp.status_code = 200
        mock_cat_resp.text = mock_cat_html

        mock_item_resp = MagicMock()
        mock_item_resp.status_code = 200
        mock_item_resp.text = mock_item_html

        def mock_get(url, **kwargs):
            if "former-les-eleves" in url:
                return mock_item_resp
            return mock_cat_resp

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Former les élèves pour améliorer le monde")
        self.assertEqual(item.isbn, "9782375650123")
        self.assertEqual(item.territory, "Guinea")
        self.assertIn("editionsganndal.com", item.listing_url)


if __name__ == "__main__":
    unittest.main()
