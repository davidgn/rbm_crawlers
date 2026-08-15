"""
Tests for Botswana spiders:
  - macmillan_bw_spider (HTML Catalog / Macmillan Education Botswana)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from macmillan_bw_spider import MacmillanBwSpider
from base_spider import BaseSpider


class TestMacmillanBwSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = MacmillanBwSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = MacmillanBwSpider()
        self.assertEqual(spider.territory, "Botswana")

    def test_platform_name(self):
        spider = MacmillanBwSpider()
        self.assertEqual(spider.platform_name, "Macmillan Education Botswana")

    def test_html_parsing(self):
        spider = MacmillanBwSpider(limit_pages=1)
        spider.CATEGORIES = ["/products/schools"]
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_cat_html = """
        <html>
            <body>
                <a href="/books/tshipidi-reader-2-ke-bodipa/649">Tshipidi Reader 2: Ke bodipa</a>
            </body>
        </html>
        """

        mock_item_html = """
        <html>
            <body>
                <h1>Tshipidi Reader 2: Ke bodipa</h1>
                <div>Author: Tumelo Mokgosi</div>
                <div>Print Price: P 74.95</div>
                <div>Print ISBN: 9789996849114</div>
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
            if "/books/" in url:
                return mock_item_resp
            return mock_cat_resp

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Tshipidi Reader 2: Ke bodipa")
        self.assertEqual(item.author, "Tumelo Mokgosi")
        self.assertEqual(item.price, "74.95")
        self.assertEqual(item.price_currency, "BWP")
        self.assertEqual(item.isbn, "9789996849114")
        self.assertEqual(item.territory, "Botswana")
        self.assertIn("macmillaneducation.co.bw", item.listing_url)


if __name__ == "__main__":
    unittest.main()
