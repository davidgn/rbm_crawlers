"""
Tests for Brunei spiders:
  - nollybook_bn_spider (Shopify API / NollyBook)
  - icklebooks_bn_spider (WooCommerce API / Icklebooks)
"""
import sys
import os
import unittest

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from nollybook_bn_spider import NollybookBnSpider
from icklebooks_bn_spider import IcklebooksBnSpider
from shopify_spider import ShopifyAPISpider
from woocommerce_spider import WooCommerceAPISpider


class TestNollybookBnSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = NollybookBnSpider(limit_pages=1)
        self.assertIsInstance(spider, ShopifyAPISpider)

    def test_territory(self):
        spider = NollybookBnSpider()
        self.assertEqual(spider.territory, "Brunei")

    def test_platform_name(self):
        spider = NollybookBnSpider()
        self.assertEqual(spider.platform_name, "NollyBook")

    def test_base_url(self):
        spider = NollybookBnSpider()
        self.assertIn("nollybook.com", spider.base_url)


class TestIcklebooksBnSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = IcklebooksBnSpider(limit_pages=1)
        self.assertIsInstance(spider, WooCommerceAPISpider)

    def test_territory(self):
        spider = IcklebooksBnSpider()
        self.assertEqual(spider.territory, "Brunei")

    def test_platform_name(self):
        spider = IcklebooksBnSpider()
        self.assertEqual(spider.platform_name, "Icklebooks")

    def test_base_url(self):
        spider = IcklebooksBnSpider()
        self.assertIn("icklebooks.com", spider.base_url)


if __name__ == "__main__":
    unittest.main()
