# Phase 2 Inventory & Analysis Report — RBM Crawlers

## Executive Summary
This analysis inventories and evaluates all web crawling spiders in `/opt/repos/rbm_crawlers/src/` to support Phase 2 Calibration. The repository contains 183 Python files, consisting of 22 core base classes, models, and utility tools, alongside 161 platform-specific web scraping spiders.

During Phase 1, robust scraping architecture was introduced via `HTMLSearchSpider`, `PlaywrightSearchSpider`, and `BaseAPISpider`, standardizing exponential backoff (`_get_robust_response`), native metadata extraction, and clean separation of `price` and `price_currency` in `BookListing`. Spiders inheriting directly from `HTMLSearchSpider` and `PlaywrightSearchSpider` (over 100+ marketplace wrappers) are Phase 1 compliant.

However, a critical subset of custom, high-priority spiders and WooCommerce-based crawlers still rely on legacy patterns—using direct `httpx`/`requests` calls without exponential retry backoff, embedding currency symbols directly into the `price` string, or omitting `price_currency`. This report details the classification of all crawlers and provides an exact refactoring roadmap for Phase 2.

---

## 1. Architecture & Extraction Standards

### 1.1 Core Models & Persistence (`models.py` & `base_spider.py`)
- **`BookListing` (`models.py`)**: Defines the target schema. Phase 1 standardized the explicit separation of:
  - `price` (Optional[str]): Clean numeric amount (e.g., `"15.00"`).
  - `price_currency` (Optional[str]): ISO currency code or standard currency token (e.g., `"USD"`, `"GBP"`, `"EUR"`, `"KRW"`).
- **`BaseSpider` (`base_spider.py`)**: Provides common infrastructure: file persistence (`save_item`), deduplication (`_load_seen_urls`), HTML caching (`cache_html`), Wikidata QID lookup (`lookup_qid`), regex signal extraction (`scavenge_metadata`), and Playwright stealth setup (`get_playwright_stealth_config`).

### 1.2 Phase 1 Robust Base Classes
- **`HTMLSearchSpider` (`html_search_spider.py`)**: Standard HTTP scraping base class. Implements `_get_robust_response()` with exponential backoff (`time.sleep(2 ** attempt)` on 403, 429, 5xx errors), splits currency from price via regex matching, and uses `local_fallback_extract()` on product detail pages for native ISBN/Publisher/Condition extraction.
- **`PlaywrightSearchSpider` (`playwright_search_spider.py`)**: Stealth browser base class for Cloudflare-protected JS-heavy sites. Handles page navigation timeouts, container selector waiting, automated scrolling, regex currency extraction, and signal scavenging.
- **`BaseAPISpider` (`base_api_spider.py`)**: Async HTTP client base class for fast API extraction with error handling and fallback reporting.

---

## 2. Spider Classification

### 2.1 Upgraded Spiders (Phase 1 Compliant)
These spiders actively leverage Phase 1 robust conventions (`_get_robust_response`, `price_currency` separation, native metadata extraction, exponential backoff).

1. **`HTMLSearchSpider` Subclasses (100+ Marketplace Wrappers)**:
   - *Files*: `4swapp_eg_spider.py`, `58tongcheng_cn_spider.py`, `5miles_us_spider.py`, `abe_books_spider.py`, `allegro_trade_in_spider.py`, `beninmarketplace_bj_spider.py`, `bonavendi_spider.py`, `bulgaria_olx_spider.py`, `clasificadosonline_pr_spider.py`, `coinafrique_ivory_coast_spider.py`, `daraz_pk_spider.py`, `esam_ir_spider.py`, `hoepli_i_t_spider.py`, `hojas_de_parra_c_o_spider.py`, `konga_ng_spider.py`, `kosmas_c_z_spider.py`, `kupindo_spider.py`, `laos_khmer24_spider.py`, `lehmanns_d_e_spider.py`, `librosccs_ve_spider.py`, `mobaoku_japan_spider.py`, `offerup_us_spider.py`, `paperplus_nz_spider.py`, `pbazaar_bd_spider.py`, `poizon_cn_spider.py`, `seoul_selection_k_r_spider.py`, `swappa_us_spider.py`, `tchadmarket_td_spider.py`, `vestniktm_tm_spider.py`, `wefru_ph_spider.py`, `yemensale_ye_spider.py`, and all `genuine_*` series stubs.
   - *Status*: **Upgraded**. Inherit robust retry logic, currency separation, and fallback metadata extraction natively.

2. **Standalone Custom Upgraded Spiders**:
   - `aladin_spider.py` (`AladinSpider`): Overrides `_get_robust_response` with randomized user agents and exponential backoff (`2 ** attempt`). Correctly parses price and sets `price_currency="KRW"`.
   - `abebooks_com_spider.py` (`AbeBooksComSpider`): Implements `_get_robust_response` and schema.org microdata parsing with separate currency.
   - `booklooker_spider.py` (`BooklookerSpider`): Implements `_get_robust_response(url, params)` with retries and separated currency.
   - `porrua_mx_spider.py`, `gonvill_mx_spider.py`, `crisol_pe_spider.py`, `medimops_api_spider.py`: Inherit from `BaseAPISpider` with async fetch handling.

---

### 2.2 Legacy Spiders Requiring Phase 2 Upgrade

The following spiders directly inherit from `BaseSpider` or `WooCommerceAPISpider` without implementing robust retry backoff or splitting `price_currency`.

#### Category A: WooCommerce API Legacy Spiders
These crawlers inherit from `WooCommerceAPISpider` (`woocommerce_spider.py`). The base class uses plain `self.client.get()` without retries on HTTP blocks/errors and concatenates currency into the price string (e.g., `f"{currency} {numeric_price:.2f}"`), leaving `price_currency` blank in `BookListing`.

1. **`woocommerce_spider.py`** (`WooCommerceAPISpider` - Base Class)
2. **`cobag_co_spider.py`** (`CobagLibrosCoSpider` - Colombia)
3. **`melivro_br_spider.py`** (`MelivroBrSpider` - Brazil)
4. **`booksya_spider.py`** (`BooksYaSpider` - Colombia)
5. **`magisterio_co_spider.py`** (`MagisterioCoSpider` - Colombia)
6. **`deleite_libreria_cristiana_c_o_spider.py`** (`DeleiteLibreriaCristianaCOSpider` - Colombia)
7. **`bookjungle_jm_spider.py`** (`BookJungleJmSpider` - Jamaica)
8. **`libreria_alemana_c_l_spider.py`** (`LibreriaAlemanaCLSpider` - Chile)
9. **`libreria_interuniversitaria_c_o_spider.py`** (`LibreriaInteruniversitariaCOSpider` - Colombia)
10. **`universitaria_c_l_spider.py`** (`UniversitariaCLSpider` - Chile)
11. **`watanbooks_spider.py`** (`WatanbooksSpider` - Turkey/Middle East)
12. **`nido_de_libros_c_o_spider.py`** (`NidoDeLibrosCOSpider` - Colombia)
13. **`bookhub_spider.py`** (`BookHubSpider` - International)
14. **`boksala_i_s_spider.py`** (`BoksalaISSpider` - Iceland)
15. **`cuspide_a_r_spider.py`** (`CuspideARSpider` - Argentina)
16. **`incunabula_co_spider.py`** (`IncunabulaCoSpider` - Colombia)
17. **`libros_antimateria_c_o_spider.py`** (`LibrosAntimateriaCOSpider` - Colombia)
18. **`graffittibooks_spider.py`** (`GraffittiBooksSpider` - International)
19. **`granmorrison_pa_spider.py`** (`GranmorrisonPaSpider` - Panama)
20. **`libropasion_c_o_spider.py`** (`LibropasionCOSpider` - Colombia)
21. **`kitabwalah_spider.py`** (`KitabwalahSpider` - India)
22. **`houseofbooks_zw_spider.py`** (`HouseOfBooksZwSpider` - Zimbabwe)
23. **`literal_libreria_geek_c_o_spider.py`** (`LiteralLibreriaGeekCOSpider` - Colombia)
24. **`la_diligencia_libros_c_o_spider.py`** (`LaDiligenciaLibrosCOSpider` - Colombia)
25. **`livrolivre_br_spider.py`** (`LivrolivreBrSpider` - Brazil)
26. **`vajrabooks_np_spider.py`** (`VajrabooksNpSpider` - Nepal)

#### Category B: Custom Standalone Legacy Spiders
These crawlers inherit directly from `BaseSpider` and implement custom HTTP fetching loops, but lack exponential backoff retries (`_get_robust_response`) and/or proper `price_currency` field assignment.

27. **`abebooks_uk_spider.py`** (`AbeBooksUKSpider`): Uses `self.client.get()` directly in `_harvest_term` (line 77). Lacks retries on status codes 403/429/5xx.
28. **`abebooks_de_spider.py`** (`AbeBooksDESpider`): Similar to UK spider, uses direct GET calls without exponential backoff.
29. **`abebooks_it_spider.py`** (`AbeBooksITSpider`): Legacy request structure without robust response handling.
30. **`agapea_es_spider.py`** (`AgapeaESSpider`): Direct HTTP requests without retry loop.
31. **`alib_ru_spider.py`** (`AlibRuSpider`): Custom Cyrillic scraping logic; missing standard exponential backoff retries.
32. **`auc_egypt_spider.py`** (`AucEgyptSpider`): Plain httpx execution without retry mechanism.
33. **`bookends_ae_spider.py`** (`BookendsAESpider`): Complex custom parser lacking robust retries.
34. **`bookshuffle_spider.py`** (`BookShuffleSpider`): Custom search flow without retry backoff.
35. **`buchfreund_spider.py`** (`BuchfreundSpider`): German marketplace crawler missing `_get_robust_response`.
36. **`nadir_kitap_spider.py`** (`NadirKitapSpider`): Major Turkish marketplace spider relying on fragile GET requests.
37. **`taaze_spider.py`** (`TaazeSpider`): Taiwanese secondhand marketplace crawler lacking exponential retry backoff.
38. **`loot_spider.py`** (`LootSpider`): South African marketplace crawler using un-retried HTTP GET calls.
39. **`eslite_tw_spider.py`** (`EsliteTwSpider`): Taiwanese bookstore crawler lacking retry loop.
40. **`bookswap_lk_spider.py`** (`BookSwapLkSpider`): Sri Lankan platform crawler lacking exponential backoff.
41. **`metabook_spider.py`** (`MetabookSpider`): Custom search crawler without robust networking.
42. **`usedbooksfactory_spider.py`** (`UsedBooksFactorySpider`): Indian used books crawler lacking retry handling.
43. **`lapanaf_spider.py`** (`LaPanafSpider`): African marketplace crawler without retry backoff.
44. **`nebrasbooks_spider.py`** (`NebrassBooksSpider`): Middle Eastern marketplace spider needing network refactoring.
45. **`camerbookshop_spider.py`** (`CamerBookshopSpider`): Cameroonian bookstore crawler using plain GET requests.
46. **`mcit_opac_spider.py`** (`McitOpacSpider`): Library OPAC crawler lacking exponential backoff.
47. **`thebookmarketng_spider.py`** (`TheBookMarketNgSpider`): Nigerian marketplace crawler needing retry upgrade.
48. **`kitapmarket_kz_spider.py`** (`KitapmarketKzSpider`): Kazakh book market spider lacking retry loop.
49. **`booksecondstory_spider.py`** (`BookSecondStorySpider`): Pakistani bookstore crawler using plain HTTP requests.
50. **`askitab_spider.py`** (`AskitabSpider`): Turkish book search spider needing robust networking refactoring.
51. **`mudah_spider.py`** (`MudahSpider`): Malaysian classifieds spider using direct un-retried HTTP requests.
52. **`halfpricedbooks_ke_spider.py`** (`HalfPricedBooksKeSpider`): Kenyan bookshop crawler lacking retry logic.
53. **`labouquinerie_sn_spider.py`** (`LaBouquinerieSNSpider`): Senegalese bookshop spider using plain GET calls.
54. **`bookmamu_spider.py`** (`BookMamuSpider`): Secondhand book crawler lacking exponential backoff.
55. **`booktionary_bd_spider.py`** (`BooktionaryBdSpider`): Bangladeshi book marketplace crawler using fragile GET requests.
56. **`nibiya_spider.py`** (`NibiyaSpider`): Custom marketplace spider needing network refactoring.
57. **`buyzoxs_playwright_spider.py`** (`BuyZoxsSpider`): Playwright script lacking standard `PlaywrightSearchSpider` wrappers.
58. **`qiqi788_spider.py`** (`Qiqi788Spider`): Chinese old book spider lacking retry backoff.
59. **`kitabi_iraq_spider.py`** (`KitabiIraqSpider`): Iraqi book platform crawler using direct GET calls.
60. **`myoldbooks_spider.py`** (`MyOldBooksSpider`): Secondhand book crawler lacking robust retries.
61. **`bookpeddler_ng_spider.py`** (`BookPeddlerNgSpider`): Nigerian book spider using plain HTTP GET calls.
62. **`antqcart_spider.py`** (`AntqCartSpider`): Antique book cart crawler lacking retry loop.
63. **`booksmandala_spider.py`** (`BooksMandalaSpider`): Nepalese book shop crawler needing network refactoring.
64. **`cansell_spider.py`** (`CansellSpider`): Japanese selling platform crawler lacking retry backoff.
65. **`tiki_vn_spider.py`** (`TikiSpider`): Vietnamese marketplace crawler using un-retried HTTP requests.
66. **`maliks_spider.py`** (`MaliksSpider`): Lebanese bookstore spider lacking exponential backoff.
67. **`jiushujie_spider.py`** (`JiushujieSpider`): Chinese used book street crawler needing retry upgrade.
68. **`booklal_spider.py`** (`BookLalSpider`): Indian secondhand book spider lacking robust networking.
69. **`bookconekt_spider.py`** (`BookconektSpider`): African book platform crawler using direct GET calls.
70. **`liberiabookstore_spider.py`** (`LiberiaBookStoreSpider`): Liberian book platform crawler needing retry backoff.
71. **`preownedbooks_ng_spider.py`** (`PreownedBooksNgSpider`): Nigerian preowned books spider lacking retry loop.
72. **`sellmybooks_spider.py`** (`SellMyBooksSpider`): Book buyback platform spider needing network refactoring.
73. **`bookdaddy_spider.py`** (`BookDaddySpider`): Book platform spider using direct GET requests.
74. **`bookle_spider.py`** (`BookleSpider`): Book exchange spider lacking exponential retry backoff.
75. **`olx_id_spider.py`** (`OLXIndonesiaBooksSpider`): Indonesian classifieds crawler using direct HTTP calls.
76. **`mutanabi_spider.py`** (`MutanabiSpider`): Middle Eastern book crawler lacking retry backoff.
77. **`bookflow_spider.py`** (`BookFlowSpider`): Book flow platform spider needing network refactoring.

---

## 3. Specific Phase 2 Refactoring Plan

For each legacy spider identified above, the Phase 2 implementer must execute the following modifications **without altering existing working CSS selectors, API endpoints, or pagination parameters**:

1. **Networking Refactoring (`_get_robust_response`)**:
   - Upgrade `WooCommerceAPISpider` and custom `BaseSpider` implementations to route HTTP GET requests through `_get_robust_response(url)`.
   - Implement exponential backoff (`time.sleep(2 ** attempt)` for `attempt` in range 3) when encountering status codes 403, 429, 500, 502, 503, 504.
2. **Currency & Price Harmonization (`price_currency`)**:
   - Update `_parse_product` in `WooCommerceAPISpider` and individual item parsers in custom spiders.
   - Separate currency codes (e.g., `INR`, `EUR`, `GBP`, `BRL`, `MXN`, `COP`, `CLP`, `TRY`, `KES`, `NGN`, `ZAR`) from numeric amounts. Assign clean numbers to `BookListing.price` and currency symbols/codes to `BookListing.price_currency`.
3. **Native Metadata Extraction**:
   - Integrate `self.scavenge_metadata(text, book)` or product detail fetching with `local_fallback_extract()` to populate ISBN, publisher, publication year, condition, and binding whenever detailed product pages are accessible.
