"""
Tests for North Macedonia spider:
  - antolog_mk_spider (WooCommerce API / Antolog Books North Macedonia)
"""
import sys
import os
import unittest

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from antolog_mk_spider import AntologMkSpider
from woocommerce_spider import WooCommerceAPISpider


class TestAntologMkSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = AntologMkSpider(limit_pages=1)
        self.assertIsInstance(spider, WooCommerceAPISpider)

    def test_territory(self):
        spider = AntologMkSpider()
        self.assertEqual(spider.territory, "North Macedonia")

    def test_platform_name(self):
        spider = AntologMkSpider()
        self.assertEqual(spider.platform_name, "Antolog Books")

    def test_base_url(self):
        spider = AntologMkSpider()
        self.assertIn("antolog.mk", spider.base_url)


if __name__ == "__main__":
    unittest.main()
