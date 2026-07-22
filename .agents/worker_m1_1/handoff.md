# Handoff Report — Milestone 1: WooCommerce Spiders Calibration

## 1. Observation
- Target file inspected: `src/woocommerce_spider.py` (lines 1 to 125).
- Base spider implementation in `src/woocommerce_spider.py` previously performed direct `self.client.get(url, headers=headers)` requests inside `run()` without exponential backoff on HTTP retry status codes.
- In `_parse_product` (lines 85-98 of original `src/woocommerce_spider.py`), prices were concatenated with currency codes into `price_val = f"{currency} {numeric_price:.2f}"` and passed to `BookListing(price=price_val, ...)` without setting `price_currency`.
- Audited all 25 subclass files (`src/cobag_co_spider.py`, `src/melivro_br_spider.py`, `src/booksya_spider.py`, `src/magisterio_co_spider.py`, `src/deleite_libreria_cristiana_c_o_spider.py`, `src/bookjungle_jm_spider.py`, `src/libreria_alemana_c_l_spider.py`, `src/libreria_interuniversitaria_c_o_spider.py`, `src/universitaria_c_l_spider.py`, `src/watanbooks_spider.py`, `src/nido_de_libros_c_o_spider.py`, `src/bookhub_spider.py`, `src/boksala_i_s_spider.py`, `src/cuspide_a_r_spider.py`, `src/incunabula_co_spider.py`, `src/libros_antimateria_c_o_spider.py`, `src/graffittibooks_spider.py`, `src/granmorrison_pa_spider.py`, `src/libropasion_c_o_spider.py`, `src/kitabwalah_spider.py`, `src/houseofbooks_zw_spider.py`, `src/literal_libreria_geek_c_o_spider.py`, `src/la_diligencia_libros_c_o_spider.py`, `src/livrolivre_br_spider.py`, `src/vajrabooks_np_spider.py`). All 25 subclasses only define `__init__` and inherit `run()` and `_parse_product()` directly from `WooCommerceAPISpider`.

## 2. Logic Chain
1. *Observation*: `WooCommerceAPISpider` was missing robust retry mechanisms and combined currency codes directly into the `price` attribute of `BookListing`.
2. *Reasoning*: Implementing `_get_robust_response(self, url, max_retries=3)` with exponential backoff (`time.sleep(2 ** attempt)`) on HTTP status codes `[403, 429, 500, 502, 503, 504]` ensures transient network blockages and rate-limiting responses are handled gracefully.
3. *Reasoning*: Refactoring `run()` to route all primary and fallback API requests through `_get_robust_response` guarantees robust network error handling across all WooCommerce endpoints.
4. *Reasoning*: Updating `_parse_product` to extract `raw_price` (normalized by `currency_minor_unit`) into a standalone numeric string assigned to `price` and extracting `currency_code` into `price_currency` satisfies the exact schema requirements for `BookListing`.
5. *Reasoning*: Because all 25 subclass spiders subclass `WooCommerceAPISpider` without overriding `_parse_product` or `run`, updating the parent class automatically calibrates all 25 subclasses across Colombia, Brazil, Jamaica, Iceland, Zimbabwe, Nepal, etc.

## 3. Caveats
- Live crawling against external production servers was not executed during this turn due to network constraints; logic was validated via unit tests and static analysis.

## 4. Conclusion
- `WooCommerceAPISpider` in `src/woocommerce_spider.py` and its 25 subclasses have been upgraded to the robust extraction standard.
- Request routing now utilizes `_get_robust_response` with exponential backoff on 403, 429, 500, 502, 503, 504 errors.
- Price and currency separation is fully functional and assigns numeric string values to `price` and currency codes to `price_currency` in `BookListing`.

## 5. Verification Method
- Execute the calibration unit test: `PYTHONPATH=src python3 -m unittest tests/test_woocommerce_calibration.py`.
- Inspect `src/woocommerce_spider.py` to confirm `_get_robust_response` and `BookListing` parameter assignments.
