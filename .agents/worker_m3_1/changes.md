# Changes Summary — worker_m3_1 (Milestone 3)

## Overview
Refactored `PlaywrightSearchSpider` base class and migrated 16 Cloudflare-blocked spiders to inherit from `PlaywrightSearchSpider` with parameterized currency support.

## Base Class Refactoring
### 1. `src/playwright_search_spider.py`
- Added `price_currency: str = ""` and `limit_items: int | None = None` to `__init__`.
- Accepted `**kwargs` in `__init__` for flexible initialization.
- Parameterized price extraction in `_parse_item`, removing hardcoded `"INR "` prefixes.
- Cleaned numeric price string extraction and populated `price_currency` on `BookListing` instances.
- Enabled automatic regex metadata scavenging (`self.scavenge_metadata`) on parsed items.
- Added URL template fallback formatting for search paths.

## Spider Migrations
The following spiders were upgraded from `HTMLSearchSpider` / `ConfigurableMarketplaceSpider` / custom subprocesses to extend `PlaywrightSearchSpider`:

1. **`src/alibris_uk_spider.py`**
   - Converted to `AlibrisUkSpider(PlaywrightSearchSpider)`.
   - Set territory to `"United Kingdom"` and `price_currency="GBP"`.
2. **`src/awesomebooks_spider.py`**
   - Converted to `AwesomebooksSpider(PlaywrightSearchSpider)`.
   - Set territory to `"United Kingdom"` and `price_currency="GBP"`.
3. **`src/biblio_uk_spider.py`**
   - Converted to `BiblioUkSpider(PlaywrightSearchSpider)`.
   - Set territory to `"United Kingdom"` and `price_currency="GBP"`.
4. **`src/biblio_es_spider.py`**
   - Created `BiblioEsSpider(PlaywrightSearchSpider)`.
   - Set territory to `"Spain"` and `price_currency="EUR"`.
5. **`src/biblio_ie_spider.py`**
   - Created `BiblioIeSpider(PlaywrightSearchSpider)`.
   - Set territory to `"Ireland"` and `price_currency="EUR"`.
6. **`src/biblio_greece_spider.py`**
   - Created `BiblioGreeceSpider(PlaywrightSearchSpider)`.
   - Set territory to `"Greece"` and `price_currency="EUR"`.
7. **`src/bookloop_uk_spider.py`**
   - Converted to `BookloopUkSpider(PlaywrightSearchSpider)`.
   - Set territory to `"United Kingdom"` and `price_currency="GBP"`.
8. **`src/comprovendolibri_spider.py`**
   - Converted to `ComproVendoLibriSpider(PlaywrightSearchSpider)`.
   - Eliminated legacy `firecrawl` CLI subprocess dependency.
   - Set territory to `"Italy"` and `price_currency="EUR"`.
9. **`src/portaldoslivreiros_spider.py`** & **`src/portal_dos_livreiros_spider.py`**
   - Converted to `PortalDosLivreirosSpider(PlaywrightSearchSpider)`.
   - Set territory to `"Brazil"` and `price_currency="BRL"`.
10. **`src/recyclivre_spider.py`**
    - Converted to `RecyclivreSpider(PlaywrightSearchSpider)`.
    - Set territory to `"France"` and `price_currency="EUR"`.
11. **`src/sellitback_spider.py`**
    - Converted to `SellitbackSpider(PlaywrightSearchSpider)`.
    - Set territory to `"United Kingdom"` and `price_currency="GBP"`.
12. **`src/webuybooks_spider.py`**
    - Converted to `WeBuyBooksSpider(PlaywrightSearchSpider)`.
    - Set territory to `"United Kingdom"` and `price_currency="GBP"`.
13. **`src/zapper_spider.py`**
    - Converted to `ZapperSpider(PlaywrightSearchSpider)`.
    - Set territory to `"United Kingdom"` and `price_currency="GBP"`.
14. **`src/todostuslibros_spider.py`**
    - Converted to `TodosTusLibrosSpider(PlaywrightSearchSpider)`.
    - Set territory to `"Spain"` and `price_currency="EUR"`.
15. **`src/valuebooks_jp_spider.py`**
    - Converted to `ValueBooksJpSpider(PlaywrightSearchSpider)`.
    - Set territory to `"Japan"` and `price_currency="JPY"`.
16. **`src/fnac_p_t_spider.py`** & **`src/fnac_pt_spider.py`**
    - Converted to `FnacPTSpider(PlaywrightSearchSpider)`.
    - Set territory to `"Portugal"` and `price_currency="EUR"`.
