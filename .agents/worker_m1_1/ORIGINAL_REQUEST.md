# Worker Task Request — Milestone 1: WooCommerce Spiders

## Objective
Upgrade `woocommerce_spider.py` (`WooCommerceAPISpider`) and its 25 subclasses to the robust extraction standard.

## Target Files
- Base: `src/woocommerce_spider.py`
- Subclasses (25): `src/cobag_co_spider.py`, `src/melivro_br_spider.py`, `src/booksya_spider.py`, `src/magisterio_co_spider.py`, `src/deleite_libreria_cristiana_c_o_spider.py`, `src/bookjungle_jm_spider.py`, `src/libreria_alemana_c_l_spider.py`, `src/libreria_interuniversitaria_c_o_spider.py`, `src/universitaria_c_l_spider.py`, `src/watanbooks_spider.py`, `src/nido_de_libros_c_o_spider.py`, `src/bookhub_spider.py`, `src/boksala_i_s_spider.py`, `src/cuspide_a_r_spider.py`, `src/incunabula_co_spider.py`, `src/libros_antimateria_c_o_spider.py`, `src/graffittibooks_spider.py`, `src/granmorrison_pa_spider.py`, `src/libropasion_c_o_spider.py`, `src/kitabwalah_spider.py`, `src/houseofbooks_zw_spider.py`, `src/literal_libreria_geek_c_o_spider.py`, `src/la_diligencia_libros_c_o_spider.py`, `src/livrolivre_br_spider.py`, `src/vajrabooks_np_spider.py`.

## Requirements
1. Refactor `WooCommerceAPISpider` to route requests through `_get_robust_response(self, url)` with exponential backoff (`time.sleep(2 ** attempt)`) on HTTP 403, 429, 5xx.
2. Separate numeric price from currency in `_parse_product` and assign `price_currency` in `BookListing`.
3. Do not modify working API endpoints or selectors.
4. Test and verify all modified files (e.g. `python3 -m py_compile` or running spider smoke tests).
5. Document all changes and test outputs in `/opt/repos/rbm_crawlers/.agents/worker_m1_1/handoff.md`.

MANDATORY INTEGRITY WARNING:
DO NOT CHEAT. All implementations must be genuine. DO NOT hardcode test results, create dummy/facade implementations, or circumvent the intended task. A Forensic Auditor will independently verify your work. Integrity violations WILL be detected and your work WILL be rejected.
