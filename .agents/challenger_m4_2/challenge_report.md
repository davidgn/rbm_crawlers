# Empirical Challenge Report — Playwright Migrated Spiders (Milestone 3)

**Author**: `challenger_m4_2` (`teamwork_preview_challenger`)  
**Date**: 2026-06-28  
**Scope**: Verification and empirical challenge of 16 Playwright-migrated spiders from Milestone 3 against `PROJECT.md` interface contracts and base class mechanics.

---

## 1. Executive Summary

Empirical testing and static/dynamic code analysis were performed on the 16 spiders migrated to `PlaywrightSearchSpider` during Milestone 3 (`alibris_uk`, `awesomebooks`, `biblio_uk`, `biblio_es`, `biblio_ie`, `biblio_greece`, `bookloop_uk`, `comprovendolibri`, `portaldoslivreiros`, `recyclivre`, `sellitback`, `webuybooks`, `zapper`, `todostuslibros`, `valuebooks_jp`, `fnac_pt`).

- **Inheritance & Instantiation**: **PASS**. All 16 spiders properly extend `PlaywrightSearchSpider`, accept flexible `**kwargs`, `limit_pages`, and `limit_items`, and correctly call `super().__init__()`.
- **ISO Currency Codes**: **PASS**. ISO currency codes (`GBP`, `EUR`, `BRL`, `JPY`) match specified territories accurately.
- **DOM Selection & Parsing Mechanics**: **DEFECTS IDENTIFIED**. Identified 1 Critical price parsing defect in `PlaywrightSearchSpider._parse_item` impacting European spiders, and 1 Medium pagination loop issue in select spiders.

---

## 2. Inventory Verification & Currency Mapping

| Spider Class | Target Territory | ISO Code | Class Inheritance | Instantiation | Status |
|--------------|------------------|----------|-------------------|---------------|--------|
| `AlibrisUkSpider` | United Kingdom | `GBP` | `PlaywrightSearchSpider` | OK | Verified |
| `AwesomebooksSpider` | United Kingdom | `GBP` | `PlaywrightSearchSpider` | OK | Verified |
| `BiblioUkSpider` | United Kingdom | `GBP` | `PlaywrightSearchSpider` | OK | Verified |
| `BiblioEsSpider` | Spain | `EUR` | `PlaywrightSearchSpider` | OK | Verified |
| `BiblioIeSpider` | Ireland | `EUR` | `PlaywrightSearchSpider` | OK | Verified |
| `BiblioGreeceSpider` | Greece | `EUR` | `PlaywrightSearchSpider` | OK | Verified |
| `BookloopUkSpider` | United Kingdom | `GBP` | `PlaywrightSearchSpider` | OK | Verified |
| `ComproVendoLibriSpider` | Italy | `EUR` | `PlaywrightSearchSpider` | OK | Verified |
| `PortalDosLivreirosSpider` | Brazil | `BRL` | `PlaywrightSearchSpider` | OK | Verified |
| `RecyclivreSpider` | France | `EUR` | `PlaywrightSearchSpider` | OK | Verified |
| `SellitbackSpider` | United Kingdom | `GBP` | `PlaywrightSearchSpider` | OK | Verified |
| `WeBuyBooksSpider` | United Kingdom | `GBP` | `PlaywrightSearchSpider` | OK | Verified |
| `ZapperSpider` | United Kingdom | `GBP` | `PlaywrightSearchSpider` | OK | Verified |
| `TodosTusLibrosSpider` | Spain | `EUR` | `PlaywrightSearchSpider` | OK | Verified |
| `ValueBooksJpSpider` | Japan | `JPY` | `PlaywrightSearchSpider` | OK | Verified |
| `FnacPTSpider` | Portugal | `EUR` | `PlaywrightSearchSpider` | OK | Verified |

---

## 3. Detailed Challenge Findings & Defects

### [Critical] Challenge 1: Price Inflation Defect on European Comma-Decimal Prices
- **Target Component**: `PlaywrightSearchSpider._parse_item` (`src/playwright_search_spider.py` lines 132–134).
- **Observation**:
  ```python
  match = re.search(r"[\d,]+(?:\.\d+)?", price_text)
  if match:
      price_val = match.group(0).replace(",", "")
  ```
- **Attack Scenario / Failure Mode**: On European platforms (e.g. Recyclivre France, TodosTusLibros Spain, FNAC Portugal, Biblio Spain/Greece), price tags format currency using commas for decimals (e.g., `"14,99 €"` or `"9,50 €"`). `re.search` matches `"14,99"`, and `.replace(",", "")` converts it to `"1499"`.
- **Blast Radius**: Items priced at 14.99 EUR are ingested into the database as 1499.00 EUR (100x price overstatement). Affects all European spiders using default `_parse_item`.
- **Mitigation**: Update `_parse_item` in `PlaywrightSearchSpider` to detect comma-decimal formats (e.g. `r"(\d+),(\d{2})"` -> `r"\1.\2"`) before removing non-numeric characters.

### [Medium] Challenge 2: Redundant Pagination Loop (Missing `{page}` in Search Path)
- **Target Component**: `AlibrisUkSpider`, `PortalDosLivreirosSpider`, `FnacPTSpider`.
- **Observation**: `search_path` definitions omit `{page}` placeholder:
  - `AlibrisUkSpider`: `"booksearch?keyword={query}&mtype=B"`
  - `PortalDosLivreirosSpider`: `"busca.asp?palavra={query}"`
  - `FnacPTSpider`: `"SearchResult/ResultList.aspx?Search={query}"`
- **Attack Scenario / Failure Mode**: In `PlaywrightSearchSpider.run()`, looping over `page_num in range(1, limit_pages + 1)` executes `url_template.format(...)`, which generates the exact same URL for all page numbers.
- **Blast Radius**: Spider scrapes page 1 multiple times in a row, generating duplicate `BookListing` records and incurring unnecessary Playwright navigation overhead.
- **Mitigation**: Add platform-specific pagination parameters to `search_path` for these spiders.

---

## 4. Empirical Test Suite Delivered

A standalone test harness was created in the challenger directory:
- `/opt/repos/rbm_crawlers/.agents/challenger_m4_2/test_migrated_spiders.py`
This test suite verifies inheritance, constructor parameter forwarding, ISO currency codes, and selector dictionary integrity across all 16 spiders.
