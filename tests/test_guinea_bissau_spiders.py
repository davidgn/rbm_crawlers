"""
Tests for Guinea-Bissau spider:
  - ku_si_mon_gw_spider (WooCommerce API / Ku Si Mon Editora)
"""
import sys
import os
import unittest

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from ku_si_mon_gw_spider import KuSiMonGwSpider
from woocommerce_spider import WooCommerceAPISpider


class TestKuSiMonGwSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = KuSiMonGwSpider(limit_pages=1)
        self.assertIsInstance(spider, WooCommerceAPISpider)

    def test_territory(self):
        spider = KuSiMonGwSpider()
        self.assertEqual(spider.territory, "Guinea-Bissau")

    def test_platform_name(self):
        spider = KuSiMonGwSpider()
        self.assertEqual(spider.platform_name, "Ku Si Mon Editora")

    def test_base_url(self):
        spider = KuSiMonGwSpider()
        self.assertIn("kusimon.com", spider.base_url)


if __name__ == "__main__":
    unittest.main()
