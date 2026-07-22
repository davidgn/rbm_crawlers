# Scope: UChicago Bookstore Used Spider Migration (Milestone 5)

## Architecture
- Target Spider: `src/uchicago_bookstore_used_spider.py`
- Framework: Convert from `HTMLSearchSpider` to `PlaywrightSearchSpider`.
- Selectors: Identify selectors for `https://uchicago.bncollege.com` and specify them.
- Output: Standard run returning >=1 valid BookListing.

## Interface Contracts
- Must export standard search capabilities yielding valid `BookListing` instances.
- Must clean and separate price and price_currency ("USD").
