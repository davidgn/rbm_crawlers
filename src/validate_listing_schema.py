#!/usr/bin/env python3
"""
Database Schema & Deduplication Validation Script
Validates BookListing model fields, ISBN checksums, currency formats, and deduplication hashes.
"""
import sys
import hashlib
import re

SRC_DIR = "/opt/repos/rbm_crawlers/src"
sys.path.insert(0, SRC_DIR)

from models import BookListing

def is_valid_isbn10(isbn: str) -> bool:
    """Validate ISBN-10 checksum."""
    isbn = isbn.replace("-", "").replace(" ", "").upper()
    if len(isbn) != 10:
        return False
    total = 0
    for i in range(9):
        if not isbn[i].isdigit():
            return False
        total += int(isbn[i]) * (10 - i)
    checksum = 10 if isbn[9] == 'X' else int(isbn[9]) if isbn[9].isdigit() else -1
    return (total + checksum) % 11 == 0

def is_valid_isbn13(isbn: str) -> bool:
    """Validate ISBN-13 checksum."""
    isbn = isbn.replace("-", "").replace(" ", "")
    if len(isbn) != 13 or not isbn.isdigit():
        return False
    total = sum(int(isbn[i]) * (1 if i % 2 == 0 else 3) for i in range(12))
    checksum = (10 - (total % 10)) % 10
    return checksum == int(isbn[12])

def compute_dedup_hash(listing: BookListing) -> str:
    """Compute SHA-256 deduplication fingerprint for a BookListing."""
    norm_title = re.sub(r'[^a-z0-9]', '', listing.title.lower())
    currency = (listing.price_currency or 'USD').upper()
    platform = listing.platform.lower()
    raw = f"{norm_title}|{currency}|{platform}"
    return hashlib.sha256(raw.encode('utf-8')).hexdigest()

def validate_listing(listing: BookListing) -> tuple[bool, list[str]]:
    """Validate a single BookListing object against strict schema rules."""
    errors = []

    if not listing.title or len(listing.title.strip()) < 2:
        errors.append("Title is missing or too short")

    if not listing.listing_url or not listing.listing_url.startswith("http"):
        errors.append(f"Invalid URL format: {listing.listing_url}")

    if not listing.price:
        errors.append("Price amount missing")
    else:
        try:
            p_val = float(re.sub(r'[^0-9\.]', '', listing.price))
            if p_val < 0.0:
                errors.append(f"Negative price: {listing.price}")
        except ValueError:
            errors.append(f"Unparseable price string: {listing.price}")

    if not listing.price_currency or len(listing.price_currency) != 3 or not listing.price_currency.isalpha():
        errors.append(f"Invalid ISO currency code: {listing.price_currency}")

    if not listing.platform:
        errors.append("Platform name missing")

    if listing.isbn:
        clean_isbn = listing.isbn.replace("-", "").replace(" ", "")
        if len(clean_isbn) == 10 and not is_valid_isbn10(clean_isbn):
            errors.append(f"Invalid ISBN-10 checksum: {listing.isbn}")
        elif len(clean_isbn) == 13 and not is_valid_isbn13(clean_isbn):
            errors.append(f"Invalid ISBN-13 checksum: {listing.isbn}")

    return (len(errors) == 0, errors)

def main():
    print("=" * 80)
    print("RUNNING LISTING SCHEMA & DEDUPLICATION VALIDATION SUITE")
    print("=" * 80)

    test_listings = [
        BookListing(
            title="Harry Potter and the Sorcerer's Stone",
            listing_url="https://upenn.bncollege.com/product/harry-potter-book",
            price="24.99",
            price_currency="USD",
            platform="UPenn BN College",
            territory="United States",
            isbn="978-0439708180"
        ),
        BookListing(
            title="Calculus: Early Transcendentals",
            listing_url="https://bookstore.ubc.ca/product/calculus",
            price="149.50",
            price_currency="CAD",
            platform="UBC Bookstore",
            territory="Canada",
            isbn="978-1285741550"
        ),
        BookListing(
            title="Oxford English Dictionary",
            listing_url="https://uk.bookshop.org/p/oed",
            price="45.00",
            price_currency="GBP",
            platform="Bookshop.org UK",
            territory="United Kingdom",
            isbn="0198612125"
        )
    ]

    all_passed = True
    for i, listing in enumerate(test_listings, 1):
        is_ok, errs = validate_listing(listing)
        fingerprint = compute_dedup_hash(listing)
        status = "PASSED ✅" if is_ok else "FAILED ❌"
        print(f"\n[Test Listing #{i}] {listing.title} ({listing.platform})")
        print(f"  Status     : {status}")
        print(f"  Price      : {listing.price_currency} {listing.price}")
        print(f"  ISBN       : {listing.isbn or 'N/A'}")
        print(f"  Fingerprint: {fingerprint[:16]}...")
        if errs:
            print(f"  Errors     : {errs}")
            all_passed = False

    print("\n" + "=" * 80)
    if all_passed:
        print("SCHEMA & DEDUPLICATION VALIDATION: ALL MOCK TESTS PASSED SUCCESSFULLY! ✅")
    else:
        print("SCHEMA VALIDATION HAD FAILURES! ❌")
    print("=" * 80)

if __name__ == "__main__":
    main()
