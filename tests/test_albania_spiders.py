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
from botimepegi_al_spider import BotimepegiAlSpider
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


class TestBotimepegiAlSpider(unittest.TestCase):
    def test_instantiation(self):
        spider = BotimepegiAlSpider(limit_pages=1)
        self.assertIsInstance(spider, BaseSpider)

    def test_territory(self):
        spider = BotimepegiAlSpider()
        self.assertEqual(spider.territory, "Albania")

    def test_platform_name(self):
        spider = BotimepegiAlSpider()
        self.assertEqual(spider.platform_name, "Botimet Pegi Albania")

    def test_html_parsing(self):
        spider = BotimepegiAlSpider(limit_pages=1)
        spider.seen_urls = set()
        emitted = []
        spider.save_item = lambda item: emitted.append(item)

        mock_cat_html = """
        <html>
            <body>
                <a href="/books/bionde-bb00cf3d">Bionde</a>
            </body>
        </html>
        """

        mock_item_html = """
        <html>
            <body>
                <h1>Bionde</h1>
                <a href="/authors/joyce-carol-oates-bb00cd3e">Joyce Carol Oates</a>
                <div>2000 Lekë</div>
                <div>ISBN: 978-9928-838-51-3</div>
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
            if "bionde" in url:
                return mock_item_resp
            return mock_cat_resp

        with patch.object(spider.session, "get", side_effect=mock_get):
            spider.run()

        self.assertEqual(len(emitted), 1)
        item = emitted[0]
        self.assertEqual(item.title, "Bionde")
        self.assertEqual(item.author, "Joyce Carol Oates")
        self.assertEqual(item.price, "2000.0")
        self.assertEqual(item.price_currency, "ALL")
        self.assertEqual(item.isbn, "9789928838513")
        self.assertEqual(item.territory, "Albania")
        self.assertIn("botimepegi.al", item.listing_url)


if __name__ == "__main__":
    unittest.main()
