# Scope: KCL Student Union Spider Migration (Milestone 2)

## Architecture
- Target Spider: `src/kcl_student_union_spider.py`
- Framework: Convert from `HTMLSearchSpider` to `PlaywrightSearchSpider`.
- Selectors: Identify selectors for `https://www.kclsu.org` and specify them.
- Output: Standard run returning >=1 valid BookListing.

## Interface Contracts
- Must export standard search capabilities yielding valid `BookListing` instances.
- Must clean and separate price and price_currency ("GBP").
