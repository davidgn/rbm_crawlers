# Project: Phase 3 C2C Marketplace Spiders (Bosnia, Montenegro, Macao)

## Architecture
- Codebase target directory: `src/`
- Standard Base Spider: Extends `BaseSpider` (or `PlaywrightSearchSpider` if blocked) and implements standard methods (`search`, `parse_search_results`, etc.).
- Network Handling: Uses `_get_robust_response(url)` for HTTP fetching, handling exponential backoff and retries.
- Data Model: Emits `BookListing` objects with distinct `price` (float/numeric) and `price_currency` (ISO currency code, e.g. BAM/EUR/MOP/CNY).

## Milestones
| # | Name | Scope | Dependencies | Status |
|---|------|-------|-------------|--------|
| 1 | Bosnia Spider | Build `src/olx_ba_spider.py` targeting OLX.ba "Knjige" category | None | IN_PROGRESS |
| 2 | Montenegro Spiders | Build `src/patuljak_me_spider.py` & `src/oglasi_me_spider.py` (or `trgovac_me_spider.py`) | None | PLANNED |
| 3 | Macao Spider | Build `src/kongfz_macao_spider.py` (or local C2C adapter) | None | PLANNED |
| 4 | Final E2E Verification | Run full test sweep and verify robust compliance | M1, M2, M3 | PLANNED |

## Interface Contracts
### Spider ↔ Runner
- `spider.search(query: str) -> List[BookListing]`
- `BookListing` fields: `title`, `price` (float/numeric), `price_currency` (str), `url`, `isbn`, `publisher`
- Robust networking: `_get_robust_response`
