# Scope: LSE Student Union Spider Migration (Milestone 3)

## Architecture
- Target Spider: `src/lse_student_union_spider.py`
- Framework: Convert from `HTMLSearchSpider` to `PlaywrightSearchSpider`.
- Selectors: Identify selectors for `https://www.lsesu.com` and specify them.
- Output: Standard run returning >=1 valid BookListing.

## Interface Contracts
- Must export standard search capabilities yielding valid `BookListing` instances.
- Must clean and separate price and price_currency ("GBP").
