"""
Tests for Belarus spider:
  - belkniga_by_spider (1C-Bitrix Catalog / Belkniga)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from belkniga_by_spider import BelknigaBySpider
from base_spider import BaseSpider


class TestBelknigaBySpider(unittest.TestCase):
    def test_instantiation(self):
        spider = BelknigaBySpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = BelknigaBySpider()
        self.assertEqual(spider.territory, "Belarus")

    def test_platform_name(self):
        spider = BelknigaBySpider()
        self.assertEqual(spider.platform_name, "Belkniga")

    def test_html_parsing(self):
        spider = BelknigaBySpider(limit_pages=1)
        spider.CATEGORIES = ["/catalog/test/"]
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_cat_html = """
        <html>
            <body>
                <a href="/catalog/test/sub/book1/">Book 1 Link</a>
            </body>
        </html>
        """

        mock_item_html = """
        <html>
            <body>
                <h1>Яусей Майсеенка</h1>
                <span>5.05 BYN/шт</span>
                <table>
                    <tr><td>Автор — Яусей Майсеенка</td></tr>
                    <tr><td>ISBN — 9789850111692</td></tr>
                </table>
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
            if "book1" in url:
                return mock_item_resp
            return mock_cat_resp

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Яусей Майсеенка")
        self.assertEqual(item.price_currency, "BYN")
        self.assertEqual(item.territory, "Belarus")
        self.assertIn("belkniga.by", item.listing_url)


if __name__ == "__main__":
    unittest.main()
