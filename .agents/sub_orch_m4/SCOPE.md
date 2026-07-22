# Scope: Columbia University Bookstore Spider Migration (Milestone 4)

## Architecture
- Target Spider: `src/columbia_university_bookstore_spider.py`
- Framework: Convert from `HTMLSearchSpider` to `PlaywrightSearchSpider`.
- Selectors: Identify selectors for `https://columbia.bncollege.com` and specify them.
- Output: Standard run returning >=1 valid BookListing.

## Interface Contracts
- Must export standard search capabilities yielding valid `BookListing` instances.
- Must clean and separate price and price_currency ("USD").
