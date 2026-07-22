import sys
import os
import ast
import inspect
import importlib
import unittest
from typing import Dict, List, Any

# Ensure src/ is on sys.path
SRC_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "src"))
if SRC_DIR not in sys.path:
    sys.path.insert(0, SRC_DIR)

M1_SPIDERS = [
    "woocommerce_spider", "cobag_co_spider", "melivro_br_spider", "booksya_spider",
    "magisterio_co_spider", "deleite_libreria_cristiana_c_o_spider", "bookjungle_jm_spider",
    "libreria_alemana_c_l_spider", "libreria_interuniversitaria_c_o_spider",
    "universitaria_c_l_spider", "watanbooks_spider", "nido_de_libros_c_o_spider",
    "bookhub_spider", "boksala_i_s_spider", "cuspide_a_r_spider", "incunabula_co_spider",
    "libros_antimateria_c_o_spider", "graffittibooks_spider", "granmorrison_pa_spider",
    "libropasion_c_o_spider", "kitabwalah_spider", "houseofbooks_zw_spider",
    "literal_libreria_geek_c_o_spider", "la_diligencia_libros_c_o_spider",
    "livrolivre_br_spider", "vajrabooks_np_spider"
]

M2_SPIDERS = [
    "abebooks_uk_spider", "abebooks_de_spider", "abebooks_it_spider", "agapea_es_spider",
    "alib_ru_spider", "auc_egypt_spider", "bookends_ae_spider", "bookshuffle_spider",
    "buchfreund_spider", "nadir_kitap_spider", "taaze_spider", "loot_spider",
    "eslite_tw_spider", "bookswap_lk_spider", "metabook_spider", "usedbooksfactory_spider",
    "lapanaf_spider"
]

M3_SPIDERS = [
    "nebrasbooks_spider", "camerbookshop_spider", "mcit_opac_spider", "thebookmarketng_spider",
    "kitapmarket_kz_spider", "booksecondstory_spider", "askitab_spider", "mudah_spider",
    "halfpricedbooks_ke_spider", "labouquinerie_sn_spider", "bookmamu_spider",
    "booktionary_bd_spider", "nibiya_spider", "buyzoxs_playwright_spider",
    "qiqi788_spider", "kitabi_iraq_spider", "myoldbooks_spider"
]

M4_SPIDERS = [
    "bookpeddler_ng_spider", "antqcart_spider", "booksmandala_spider", "cansell_spider",
    "tiki_vn_spider", "maliks_spider", "jiushujie_spider", "booklal_spider",
    "bookconekt_spider", "liberiabookstore_spider", "preownedbooks_ng_spider",
    "sellmybooks_spider", "bookdaddy_spider", "bookle_spider", "olx_id_spider",
    "mutanabi_spider", "bookflow_spider"
]

ALL_77_SPIDERS = M1_SPIDERS + M2_SPIDERS + M3_SPIDERS + M4_SPIDERS

REQUIRED_STATUS_CODES = {403, 429, 500, 502, 503, 504}

class Phase2EmpiricalVerification:
    def __init__(self):
        self.results = {}

    def verify_spider(self, mod_name: str) -> Dict[str, Any]:
        res = {
            "module": mod_name,
            "import_success": False,
            "ast_parsed": False,
            "has_robust_response_call_or_def": False,
            "status_codes_covered": set(),
            "status_code_coverage_complete": False,
            "booklisting_price_split": False,
            "instantiation_success": False,
            "errors": []
        }

        # 1. Import test
        try:
            mod = importlib.import_module(mod_name)
            res["import_success"] = True
        except Exception as e:
            res["errors"].append(f"Import error: {str(e)}")
            return res

        # 2. AST inspection
        file_path = mod.__file__
        if file_path.endswith('.pyc'):
            file_path = file_path[:-1]
        
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                code = f.read()
            tree = ast.parse(code)
            res["ast_parsed"] = True

            # Check robust response presence (either defined or called or in inherited base class code)
            if "_get_robust_response" in code or "WooCommerceAPISpider" in code or "HTMLSearchSpider" in code or "PlaywrightSearchSpider" in code:
                res["has_robust_response_call_or_def"] = True

            # Check status codes mentioned in source file or base class
            found_codes = set()
            for sc in REQUIRED_STATUS_CODES:
                if str(sc) in code:
                    found_codes.add(sc)
            # Note: WooCommerceAPISpider subclasses inherit status code handling from woocommerce_spider.py
            if mod_name in M1_SPIDERS and mod_name != "woocommerce_spider":
                # Check base class file woocommerce_spider.py for status codes
                with open(os.path.join(SRC_DIR, "woocommerce_spider.py"), 'r') as bf:
                    bcode = bf.read()
                for sc in REQUIRED_STATUS_CODES:
                    if str(sc) in bcode:
                        found_codes.add(sc)

            # Check base classes if needed
            if "HTMLSearchSpider" in code:
                with open(os.path.join(SRC_DIR, "html_search_spider.py"), 'r') as bf:
                    bcode = bf.read()
                for sc in REQUIRED_STATUS_CODES:
                    if str(sc) in bcode:
                        found_codes.add(sc)
            if "PlaywrightSearchSpider" in code:
                with open(os.path.join(SRC_DIR, "playwright_search_spider.py"), 'r') as bf:
                    bcode = bf.read()
                for sc in REQUIRED_STATUS_CODES:
                    if str(sc) in bcode:
                        found_codes.add(sc)
            if "base_spider.py" in code or "BaseSpider" in code:
                with open(os.path.join(SRC_DIR, "base_spider.py"), 'r') as bf:
                    bcode = bf.read()
                for sc in REQUIRED_STATUS_CODES:
                    if str(sc) in bcode:
                        found_codes.add(sc)

            res["status_codes_covered"] = found_codes
            res["status_code_coverage_complete"] = REQUIRED_STATUS_CODES.issubset(found_codes)

            # Check BookListing schema assignments (price and price_currency)
            if "BookListing" in code:
                if "price_currency" in code:
                    res["booklisting_price_split"] = True
                else:
                    res["errors"].append("BookListing used but price_currency not found in source")
            else:
                # Check if inherited or handled by base
                if mod_name in M1_SPIDERS:
                    with open(os.path.join(SRC_DIR, "woocommerce_spider.py"), 'r') as bf:
                        bcode = bf.read()
                    if "price_currency" in bcode:
                        res["booklisting_price_split"] = True

        except Exception as e:
            res["errors"].append(f"AST/Source parsing error: {str(e)}")

        # 3. Instantiation test
        try:
            spider_cls = None
            for attr in dir(mod):
                obj = getattr(mod, attr)
                if isinstance(obj, type) and attr.endswith("Spider"):
                    spider_cls = obj
                    break
            if spider_cls:
                try:
                    # try default or minimal args
                    sig = inspect.signature(spider_cls.__init__)
                    kwargs = {}
                    for param in sig.parameters.values():
                        if param.name == 'self':
                            continue
                        if param.default == inspect.Parameter.empty:
                            if param.name in ('platform_name', 'base_url', 'country'):
                                kwargs[param.name] = "test"
                            elif param.name == 'query':
                                kwargs['query'] = "python"
                            else:
                                kwargs[param.name] = "test"
                    inst = spider_cls(**kwargs)
                    res["instantiation_success"] = True
                except Exception as ie:
                    res["errors"].append(f"Instantiation warning: {str(ie)}")
            else:
                res["errors"].append("No spider class ending with Spider found in module")
        except Exception as e:
            res["errors"].append(f"Module inspection error: {str(e)}")

        return res

def run_all():
    verifier = Phase2EmpiricalVerification()
    all_res = []
    total = len(ALL_77_SPIDERS)
    passed_imports = 0
    passed_robust = 0
    passed_status = 0
    passed_price = 0

    print(f"Starting Empirical Verification for {total} Spiders...")
    for mod_name in ALL_77_SPIDERS:
        r = verifier.verify_spider(mod_name)
        all_res.append(r)
        if r["import_success"]: passed_imports += 1
        if r["has_robust_response_call_or_def"]: passed_robust += 1
        if r["status_code_coverage_complete"]: passed_status += 1
        if r["booklisting_price_split"]: passed_price += 1
        
        if r["errors"]:
            print(f"Spider {mod_name}: Errors/Warnings: {r['errors']}")

    print("\n=== SUMMARY METRICS ===")
    print(f"Total Spiders Evaluated: {total}")
    print(f"Import Success Rate: {passed_imports}/{total} ({passed_imports/total*100:.1f}%)")
    print(f"Robust Response Handling: {passed_robust}/{total} ({passed_robust/total*100:.1f}%)")
    print(f"Status Code Coverage (403,429,500,502,503,504): {passed_status}/{total} ({passed_status/total*100:.1f}%)")
    print(f"BookListing Price/Currency Split: {passed_price}/{total} ({passed_price/total*100:.1f}%)")

if __name__ == "__main__":
    run_all()
