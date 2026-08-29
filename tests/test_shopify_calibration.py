import sys
import os
import unittest

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "src"))

from shopify_search_spider import ShopifySearchSpider

SUBCLASSES = [
    "libronomia_ve_spider",
    "livreservice_ma_spider",
    "kishibooks_gt_spider",
    "kitabay_in_spider",
    "booklify_pk_spider",
    "champaca_in_spider",
    "ninety_nine_bookstores_in_spider",
    "kitab_markaz_pk_spider",
    "libreriapocho_uy_spider",
    "theenglishbookshop_kw_spider",
    "spectrawidebook_kw_spider",
    "kuwaitbookstore_kw_spider",
]

class TestShopifyCalibration(unittest.TestCase):
    def test_subclass_imports_and_instantiation(self):
        for mod_name in SUBCLASSES:
            mod = __import__(mod_name)
            # Find class in module inheriting from ShopifySearchSpider
            spider_cls = None
            for attr in dir(mod):
                obj = getattr(mod, attr)
                if isinstance(obj, type) and issubclass(obj, ShopifySearchSpider) and obj is not ShopifySearchSpider:
                    spider_cls = obj
                    break
            self.assertIsNotNone(spider_cls, f"No ShopifySearchSpider subclass found in {mod_name}")
            instance = spider_cls(limit_items=1)
            self.assertTrue(isinstance(instance, ShopifySearchSpider))
