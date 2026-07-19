# Project: rbm_crawlers University Spiders Salvage

## Architecture
- Framework: Python web scraping spiders inheriting from `PlaywrightSearchSpider` to bypass anti-bot protections.
- Models: `BookListing` object containing `title`, `url`, `price`, `price_currency`, `isbn`, `publisher`.
- Bypassing: Stealth/headless Playwright configuration to bypass 403 blocks.
- Output: Standard CLI run returning >=1 valid BookListing.

## Milestones
| # | Name | Scope | Dependencies | Status |
|---|------|-------|-------------|--------|
| 1 | UPenn Upgrade | Migrate `upenn_bookstore_used_spider.py` to Playwright & fix selectors | none | COMPLETED |
| 2 | KCL Upgrade | Migrate `kcl_student_union_spider.py` to Playwright & fix selectors | none | COMPLETED |
| 3 | LSE Upgrade | Migrate `lse_student_union_spider.py` to Playwright & fix selectors | none | COMPLETED |
| 4 | Columbia Upgrade | Migrate `columbia_university_bookstore_spider.py` to Playwright & fix selectors | none | COMPLETED |
| 5 | UChicago Upgrade | Migrate `uchicago_bookstore_used_spider.py` to Playwright & fix selectors | none | COMPLETED |
| 6 | Verification & Audit | All 5 spiders successfully bypass blocks and extract >=1 BookListing | M1, M2, M3, M4, M5 | COMPLETED |
| 7 | Commercial Bookstore Spiders | Implement and upgrade bookstore-specific crawlers for Ghana (Booknook.store), Gabon (Gabon Livre), and Angola (Angolivros) using WooCommerce API | none | COMPLETED |
| 8 | More Low-Cost Bookstore Spiders | Implement and upgrade bookstore-specific crawlers for Algeria (Livres & Lis), North Macedonia (Matica Makedonska), Kosovo (House of Books), Tunisia (Dar El Kitab), Bolivia (Encantalibros), Paraguay (Libruras), Mongolia (Foreign Book in Mongolia), Montenegro (Narodna Knjiga), Uruguay (Puro Verso), and Slovenia (Felix) using WooCommerce API, and Venezuela (Libronomia) and Morocco (Livre Service) using Shopify suggest API | none | COMPLETED |


## Interface Contracts
### Spider Base Interface
- Subclasses of `PlaywrightSearchSpider`.
- Must export standard search capabilities yielding valid `BookListing` instances.
- `BookListing`: clean numerical `price` (float string) and extracted `price_currency` string.

## Code Layout
- Spiders: `src/<spider_name>.py`
- Base classes & models: `src/html_search_spider.py`, `src/playwright_search_spider.py`
