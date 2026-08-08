"""
Tests for Cambodia spider:
  - chamnar_kh_spider (WooCommerce API / Chamnar Bookstore)
"""
import sys
import os
import unittest

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from chamnar_kh_spider import ChamnarKhSpider
from woocommerce_spider import WooCommerceAPISpider


class TestChamnarKhSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = ChamnarKhSpider(limit_pages=1)
        self.assertIsInstance(spider, WooCommerceAPISpider)

    def test_territory(self):
        spider = ChamnarKhSpider()
        self.assertEqual(spider.territory, "Cambodia")

    def test_platform_name(self):
        spider = ChamnarKhSpider()
        self.assertEqual(spider.platform_name, "Chamnar Bookstore")

    def test_base_url(self):
        spider = ChamnarKhSpider()
        self.assertIn("chamnarbookstore.com", spider.base_url)


if __name__ == "__main__":
    unittest.main()
