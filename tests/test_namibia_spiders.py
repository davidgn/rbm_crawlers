"""
Tests for Namibia spiders:
  - mybookowl_na_spider (WooCommerce Store API / My Book Owl Namibia)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from mybookowl_na_spider import MybookowlNaSpider
from base_spider import BaseSpider


class TestMybookowlNaSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = MybookowlNaSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = MybookowlNaSpider()
        self.assertEqual(spider.territory, "Namibia")

    def test_platform_name(self):
        spider = MybookowlNaSpider()
        self.assertEqual(spider.platform_name, "My Book Owl Namibia")

    def test_api_parsing(self):
        spider = MybookowlNaSpider(limit_pages=1)
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_products = [
            {
                "id": 8412,
                "name": "Chicken Run: Sticker Activity",
                "permalink": "https://mybookowl.com/product/chicken-run-sticker-activity/",
                "prices": {
                    "price": "18000",
                    "currency_code": "NAD",
                    "currency_minor_unit": 2,
                },
                "attributes": [
                    {
                        "name": "Author",
                        "terms": [{"name": "Aardman"}]
                    }
                ]
            }
        ]

        mock_resp = MagicMock()
        mock_resp.status_code = 200
        mock_resp.json.return_value = mock_products

        with patch.object(spider.session, "get", return_value=mock_resp):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Chicken Run: Sticker Activity")
        self.assertEqual(item.author, "Aardman")
        self.assertEqual(item.price, "180.0")
        self.assertEqual(item.price_currency, "NAD")
        self.assertEqual(item.territory, "Namibia")
        self.assertEqual(item.listing_url, "https://mybookowl.com/product/chicken-run-sticker-activity/")


if __name__ == "__main__":
    unittest.main()
