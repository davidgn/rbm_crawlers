# Project Plan — Phase 2 Calibration

## Architecture & Goal
Systematically upgrade all 77 remaining legacy web scraping spiders in `/opt/repos/rbm_crawlers/src/` to the Phase 1 robust extraction standard without altering working CSS selectors, API endpoints, or pagination logic.
Key extraction logic upgrades:
1. Networking Resiliency: Exponential retry backoff (`_get_robust_response`) on HTTP status codes 403, 429, 500, 502, 503, 504.
2. Currency & Price Harmonization: Explicit separation of numeric `price` and currency token (`price_currency`) in `BookListing`.
3. Native Metadata Enrichment: Scavenge metadata and extract native details on product pages.

## Milestones Decomposition
| # | Name | Scope | Dependencies | Status |
|---|------|-------|-------------|--------|
| M1 | WooCommerce Base & Spiders | `woocommerce_spider.py` + 25 subclasses | None | PLANNED |
| M2 | Custom Standalone Spiders Group 1 | 17 Regional Marketplace Spiders (Spiders 27-43) | None | PLANNED |
| M3 | Custom Standalone Spiders Group 2 | 17 ME/Africa/Asia Spiders (Spiders 44-60) | None | PLANNED |
| M4 | Custom Standalone Spiders Group 3 | 17 Global Bookshops & Platforms (Spiders 61-77) | None | PLANNED |
| M5 | Final Verification & Audit | Full repository regression & Forensic Audit | M1, M2, M3, M4 | PLANNED |

## Detailed Milestone Assignments

### Milestone 1: WooCommerce Base & Spiders (26 Files)
- Base file: `src/woocommerce_spider.py` (`WooCommerceAPISpider`)
- Subclasses (25): `cobag_co_spider.py`, `melivro_br_spider.py`, `booksya_spider.py`, `magisterio_co_spider.py`, `deleite_libreria_cristiana_c_o_spider.py`, `bookjungle_jm_spider.py`, `libreria_alemana_c_l_spider.py`, `libreria_interuniversitaria_c_o_spider.py`, `universitaria_c_l_spider.py`, `watanbooks_spider.py`, `nido_de_libros_c_o_spider.py`, `bookhub_spider.py`, `boksala_i_s_spider.py`, `cuspide_a_r_spider.py`, `incunabula_co_spider.py`, `libros_antimateria_c_o_spider.py`, `graffittibooks_spider.py`, `granmorrison_pa_spider.py`, `libropasion_c_o_spider.py`, `kitabwalah_spider.py`, `houseofbooks_zw_spider.py`, `literal_libreria_geek_c_o_spider.py`, `la_diligencia_libros_c_o_spider.py`, `livrolivre_br_spider.py`, `vajrabooks_np_spider.py`.

### Milestone 2: Custom Standalone Spiders Group 1 (17 Files)
- Files: `abebooks_uk_spider.py`, `abebooks_de_spider.py`, `abebooks_it_spider.py`, `agapea_es_spider.py`, `alib_ru_spider.py`, `auc_egypt_spider.py`, `bookends_ae_spider.py`, `bookshuffle_spider.py`, `buchfreund_spider.py`, `nadir_kitap_spider.py`, `taaze_spider.py`, `loot_spider.py`, `eslite_tw_spider.py`, `bookswap_lk_spider.py`, `metabook_spider.py`, `usedbooksfactory_spider.py`, `lapanaf_spider.py`.

### Milestone 3: Custom Standalone Spiders Group 2 (17 Files)
- Files: `nebrasbooks_spider.py`, `camerbookshop_spider.py`, `mcit_opac_spider.py`, `thebookmarketng_spider.py`, `kitapmarket_kz_spider.py`, `booksecondstory_spider.py`, `askitab_spider.py`, `mudah_spider.py`, `halfpricedbooks_ke_spider.py`, `labouquinerie_sn_spider.py`, `bookmamu_spider.py`, `booktionary_bd_spider.py`, `nibiya_spider.py`, `buyzoxs_playwright_spider.py`, `qiqi788_spider.py`, `kitabi_iraq_spider.py`, `myoldbooks_spider.py`.

### Milestone 4: Custom Standalone Spiders Group 3 (17 Files)
- Files: `bookpeddler_ng_spider.py`, `antqcart_spider.py`, `booksmandala_spider.py`, `cansell_spider.py`, `tiki_vn_spider.py`, `maliks_spider.py`, `jiushujie_spider.py`, `booklal_spider.py`, `bookconekt_spider.py`, `liberiabookstore_spider.py`, `preownedbooks_ng_spider.py`, `sellmybooks_spider.py`, `bookdaddy_spider.py`, `bookle_spider.py`, `olx_id_spider.py`, `mutanabi_spider.py`, `bookflow_spider.py`.

### Milestone 5: Final Verification & Audit
- Full unit/syntax test suite run across updated spiders.
- Reviewer & Challenger empirical validation.
- Forensic Integrity Audit verification.
