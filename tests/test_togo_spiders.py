"""
Tests for Togo spiders:
  - librairie_du_futur_tg_spider  (WooCommerce / Librairie du Futur)
  - librairie_bon_pasteur_tg_spider (HTML Search / Librairie Bon Pasteur)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "src"))

from librairie_du_futur_tg_spider import LibrairieDuFuturTgSpider
from librairie_bon_pasteur_tg_spider import LibrairieBonPasteurTgSpider
from woocommerce_spider import WooCommerceAPISpider
from base_spider import BaseSpider


class TestLibrairieDuFuturTgSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = LibrairieDuFuturTgSpider(limit_pages=1)
        self.assertIsInstance(spider, WooCommerceAPISpider)

    def test_territory(self):
        spider = LibrairieDuFuturTgSpider()
        self.assertEqual(spider.territory, "Togo")

    def test_base_url(self):
        spider = LibrairieDuFuturTgSpider()
        self.assertIn("librairiedufutur.com", spider.base_url)

    def test_platform_name(self):
        spider = LibrairieDuFuturTgSpider()
        self.assertEqual(spider.platform_name, "Librairie du Futur")

    def test_limit_pages(self):
        spider = LibrairieDuFuturTgSpider(limit_pages=3)
        self.assertEqual(spider.limit_pages, 3)


class TestLibrairieBonPasteurTgSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = LibrairieBonPasteurTgSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = LibrairieBonPasteurTgSpider()
        self.assertEqual(spider.territory, "Togo")

    def test_platform_name(self):
        spider = LibrairieBonPasteurTgSpider()
        self.assertEqual(spider.platform_name, "Librairie Bon Pasteur")

    def test_parse_book_page(self):
        spider = LibrairieBonPasteurTgSpider(limit_pages=1)
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_html = """
        <html>
            <head><title>Détail - BonPasteur</title></head>
            <body>
                <h1 class="text-4xl font-bold primary-text">JUJUTSU KAISEN</h1>
                <span class="text-3xl font-bold primary-text">5600 <span class='font-light text-sm'> FCFA </span></span>
            </body>
        </html>
        """
        mock_response = MagicMock()
        mock_response.status_code = 200
        mock_response.text = mock_html

        with patch.object(spider.session, "get", return_value=mock_response):
            spider._parse_book_page("https://librairiebonpasteur.tg/livre/220")

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "JUJUTSU KAISEN")
        self.assertEqual(item.price, "5600")
        self.assertEqual(item.price_currency, "XOF")
        self.assertEqual(item.territory, "Togo")
        self.assertEqual(item.listing_url, "https://librairiebonpasteur.tg/livre/220")


if __name__ == "__main__":
    unittest.main()
