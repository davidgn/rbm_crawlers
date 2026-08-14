"""
Tests for Tajikistan spider:
  - alifshop_tj_spider (HTML Catalog / Alif Shop Tajikistan)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from alifshop_tj_spider import AlifshopTjSpider
from base_spider import BaseSpider


class TestAlifshopTjSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = AlifshopTjSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = AlifshopTjSpider()
        self.assertEqual(spider.territory, "Tajikistan")

    def test_platform_name(self):
        spider = AlifshopTjSpider()
        self.assertEqual(spider.platform_name, "Alif Shop Tajikistan")

    def test_html_parsing(self):
        spider = AlifshopTjSpider(limit_pages=1)
        spider.CATEGORIES = ["/category/knigi?cityId=1"]
        spider.seen_urls = set()
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_cat_html = """
        <html>
            <body>
                <a href="/product/test-tajik-book-123">Халед Хоссейни: Тысяча сияющих солнц</a>
            </body>
        </html>
        """

        mock_item_html = """
        <html>
            <body>
                <h1>Халед Хоссейни: Тысяча сияющих солнц</h1>
                <div>125 с.</div>
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
            if "test-tajik-book" in url:
                return mock_item_resp
            return mock_cat_resp

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Халед Хоссейни: Тысяча сияющих солнц")
        self.assertEqual(item.price, "125.0")
        self.assertEqual(item.price_currency, "TJS")
        self.assertEqual(item.territory, "Tajikistan")
        self.assertIn("alifshop.tj", item.listing_url)


if __name__ == "__main__":
    unittest.main()
