import sys
import os
import unittest
from unittest.mock import MagicMock, patch
import httpx

sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "src"))

from woocommerce_spider import WooCommerceAPISpider
from models import BookListing

SUBCLASSES = [
    "cobag_co_spider",
    "melivro_br_spider",
    "booksya_spider",
    "magisterio_co_spider",
    "deleite_libreria_cristiana_c_o_spider",
    "bookjungle_jm_spider",
    "libreria_alemana_c_l_spider",
    "libreria_interuniversitaria_c_o_spider",
    "universitaria_c_l_spider",
    "watanbooks_spider",
    "nido_de_libros_c_o_spider",
    "bookhub_spider",
    "boksala_i_s_spider",
    "cuspide_a_r_spider",
    "incunabula_co_spider",
    "libros_antimateria_c_o_spider",
    "graffittibooks_spider",
    "granmorrison_pa_spider",
    "libropasion_c_o_spider",
    "kitabwalah_spider",
    "houseofbooks_zw_spider",
    "literal_libreria_geek_c_o_spider",
    "la_diligencia_libros_c_o_spider",
    "livrolivre_br_spider",
    "vajrabooks_np_spider",
    "booknook_store_spider",
    "gabonlivre_spider",
    "angolivros_spider",
    "livresetlis_dz_spider",
    "matica_mk_spider",
    "houseofbooks_ks_spider",
    "dar_elkitab_tn_spider",
    "encantalibros_bo_spider",
    "libruras_py_spider",
    "foreignbook_mn_spider",
    "narodnaknjiga_me_spider",
    "puroverso_uy_spider",
    "felix_si_spider",
    "cartier_md_spider",
    "libreriacervantes_sv_spider",
    "tiranabook_al_spider",
    "kultura_mk_spider",
]

class TestWooCommerceCalibration(unittest.TestCase):
    def test_subclass_imports_and_instantiation(self):
        for mod_name in SUBCLASSES:
            mod = __import__(mod_name)
            # Find class in module inheriting from WooCommerceAPISpider
            spider_cls = None
            for attr in dir(mod):
                obj = getattr(mod, attr)
                if isinstance(obj, type) and issubclass(obj, WooCommerceAPISpider) and obj is not WooCommerceAPISpider:
                    spider_cls = obj
                    break
            self.assertIsNotNone(spider_cls, f"No WooCommerceAPISpider subclass found in {mod_name}")
            instance = spider_cls(limit_pages=1)
            self.assertTrue(isinstance(instance, WooCommerceAPISpider))

    def test_parse_product_price_currency_separation(self):
        spider = WooCommerceAPISpider("TestPlatform", "https://example.com", "Colombia")
        saved_items = []
        spider.save_item = lambda item: saved_items.append(item)

        mock_product = {
            "name": "Cien Años de Soledad",
            "permalink": "https://example.com/product/100-anos",
            "prices": {
                "price": "4500000",
                "currency_code": "COP",
                "currency_minor_unit": 2
            },
            "attributes": [
                {
                    "name": "Author",
                    "terms": [{"name": "Gabriel García Márquez"}]
                }
            ]
        }

        spider._parse_product(mock_product)
        self.assertEqual(len(saved_items), 1)
        item = saved_items[0]
        self.assertEqual(item.title, "Cien Años de Soledad")
        self.assertEqual(item.author, "Gabriel García Márquez")
        self.assertEqual(item.price, "45000.00")
        self.assertEqual(item.price_currency, "COP")

    @patch("time.sleep", return_value=None)
    def test_get_robust_response_retries(self, mock_sleep):
        spider = WooCommerceAPISpider("TestPlatform", "https://example.com", "India")
        mock_client = MagicMock()
        spider.client = mock_client

        # Setup mock client responses: 2 retries with 503, 3rd retry succeeds with 200
        resp_503 = MagicMock(status_code=503)
        resp_200 = MagicMock(status_code=200)
        mock_client.get.side_effect = [resp_503, resp_503, resp_200]

        res = spider._get_robust_response("https://example.com/test")
        self.assertEqual(res, resp_200)
        self.assertEqual(mock_client.get.call_count, 3)
        self.assertEqual(mock_sleep.call_count, 2)
        mock_sleep.assert_any_call(1)
        mock_sleep.assert_any_call(2)

if __name__ == "__main__":
    unittest.main()
