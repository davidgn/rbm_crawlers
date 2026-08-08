"""
Tests for Albania spider:
  - bukinist_al_spider (PrestaShop Catalog / Bukinist Albania)
"""
import sys
import os
import unittest
from unittest.mock import MagicMock, patch

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src")))

from bukinist_al_spider import BukinistAlSpider
from base_spider import BaseSpider


class TestBukinistAlSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = BukinistAlSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = BukinistAlSpider()
        self.assertEqual(spider.territory, "Albania")

    def test_platform_name(self):
        spider = BukinistAlSpider()
        self.assertEqual(spider.platform_name, "Bukinist Albania")

    def test_html_parsing(self):
        spider = BukinistAlSpider(limit_pages=1)
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_html = """
        <html>
            <body>
                <div class="product-container">
                    <h5 class="product-name">
                        <a href="https://bukinist.al/sq/histori/12115-ballkani-ne-shekullin-xx.html">Ballkani ne shekullin XX</a>
                    </h5>
                    <span class="price">2 000 Lekë</span>
                </div>
            </body>
        </html>
        """
        mock_response = MagicMock()
        mock_response.status_code = 200
        mock_response.text = mock_html

        with patch.object(spider.session, "get", return_value=mock_response):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Ballkani ne shekullin XX")
        self.assertEqual(item.price, "2000")
        self.assertEqual(item.price_currency, "ALL")
        self.assertEqual(item.territory, "Albania")
        self.assertEqual(
            item.listing_url,
            "https://bukinist.al/sq/histori/12115-ballkani-ne-shekullin-xx.html"
        )


if __name__ == "__main__":
    unittest.main()
