"""
Tests for Gabon spiders:
  - librairieclga_ga_spider (HTML Catalog / Librairie Continuum Leadership Gabon)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from librairieclga_ga_spider import LibrairieclgaGaSpider
from base_spider import BaseSpider


class TestLibrairieclgaGaSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = LibrairieclgaGaSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = LibrairieclgaGaSpider()
        self.assertEqual(spider.territory, "Gabon")

    def test_platform_name(self):
        spider = LibrairieclgaGaSpider()
        self.assertEqual(spider.platform_name, "Librairie Continuum Leadership Gabon")

    def test_html_parsing(self):
        spider = LibrairieclgaGaSpider(limit_pages=1)
        spider.CATEGORIES = ["/shop/category/test-19"]
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_cat_html = """
        <html>
            <body>
                <a href="/shop/la-psychologie-de-largent-741">La Psychologie de l'argent</a>
            </body>
        </html>
        """

        mock_item_html = """
        <html>
            <body>
                <h1>La Psychologie de l'argent</h1>
                <div>Prix: 6 300 FCFA</div>
                <a href="/shop?search=Morgan Housel">Morgan Housel</a>
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
            if "741" in url:
                return mock_item_resp
            return mock_cat_resp

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "La Psychologie de l'argent")
        self.assertEqual(item.author, "Morgan Housel")
        self.assertEqual(item.price, "6300.0")
        self.assertEqual(item.price_currency, "XAF")
        self.assertEqual(item.territory, "Gabon")
        self.assertIn("librairieclga.com", item.listing_url)


if __name__ == "__main__":
    unittest.main()
