"""
Tests for Liechtenstein spider:
  - omni_li_spider (HTML Catalog / Omni Liechtenstein)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from omni_li_spider import OmniLiSpider
from base_spider import BaseSpider


class TestOmniLiSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = OmniLiSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = OmniLiSpider()
        self.assertEqual(spider.territory, "Liechtenstein")

    def test_platform_name(self):
        spider = OmniLiSpider()
        self.assertEqual(spider.platform_name, "Omni Liechtenstein")

    def test_html_parsing(self):
        spider = OmniLiSpider(limit_pages=1)
        spider.CATEGORIES = ["https://www.omni.li/buchtipps"]
        spider.seen_urls = set()
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_cat_html = """
        <html>
            <body>
                <a href="https://lesen.omni.li/mason-simon-das-kalte-herz-von-oxford-isbn-978-3-442-49565-8">
                    Mason, Simon: Das kalte Herz von Oxford
                </a>
            </body>
        </html>
        """

        mock_item_html = """
        <html>
            <body>
                <h1>Mason, Simon: Das kalte Herz von Oxford - Ein Fall für DI Wilkins</h1>
                <div>CHF 24.50</div>
                <div>ISBN: 978-3-442-49565-8</div>
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
            if "mason-simon" in url:
                return mock_item_resp
            return mock_cat_resp

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.author, "Mason, Simon")
        self.assertEqual(item.title, "Das kalte Herz von Oxford - Ein Fall für DI Wilkins")
        self.assertEqual(item.price, "24.5")
        self.assertEqual(item.price_currency, "CHF")
        self.assertEqual(item.isbn, "9783442495658")
        self.assertEqual(item.territory, "Liechtenstein")
        self.assertIn("lesen.omni.li", item.listing_url)


if __name__ == "__main__":
    unittest.main()
