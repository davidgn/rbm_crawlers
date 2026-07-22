# Scope: UPenn Bookstore Used Spider Migration (Milestone 1)

## Architecture
- Target Spider: `src/upenn_bookstore_used_spider.py`
- Framework: Convert from `HTMLSearchSpider` to `PlaywrightSearchSpider`.
- Selectors: Identify selectors for `https://upenn.bncollege.com` and specify them.
- Output: Standard run returning >=1 valid BookListing.

## Interface Contracts
- Must export standard search capabilities yielding valid `BookListing` instances.
- Must clean and separate price and price_currency ("USD").
