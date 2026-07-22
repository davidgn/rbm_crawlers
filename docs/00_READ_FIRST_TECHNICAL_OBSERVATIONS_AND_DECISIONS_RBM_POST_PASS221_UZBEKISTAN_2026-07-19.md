# READ FIRST — Technical observations and decisions, RBM post-pass221 Uzbekistan

## File-backed authority

The pass221 CSVs in `data/` represent the live state. The files are clean in git and reflect all changes.

## Terminal packaging decisions

- Nested ZIPs are excluded.
- Fresh terminal continuity docs, capsule history, direct row-count validation, a resume prompt, and new SHA256 manifests are included.

## Classification decisions for Uzbekistan (Pass 221)

- **Kitabu.uz**: Reconfirmed as a strict used-book exchange and sale marketplace (`main universe`). Verified active status and listings via playwright browser automation on `https://kitabu.uz/library`. Successfully handles user-to-user book trades.
- **Kytab.uz (Al-ilm)**: Reconfirmed as a digital e-library and digital bookstore, not a used-book sale/rental/exchange marketplace. Reconfirmed as a weak-fit bookstore category with no promotion.
- **Kitobxon.com**: Added to registry and compile datasets as an online bookstore and digital library (`single-store bookstore layer` / `weak-fit core`). Established since 2014, offers paper book delivery and e-books.
- **Mehr Kutubxonasi**: Added as a volunteer-run free public library and community book-sharing project in Tashkent (`offline / fair / literacy layer` / `literacy_distribution`). BORROW books for free; supported by donations. Active website and Telegram bot `@mkitobot`.

## Pass-specific technical notes from the sweep campaign (Pass 218 - 220)

- Spiders for multiple regions (e.g. Albania, Moldova, El Salvador, Slovenia, Morocco) were implemented in `src/` and successfully ran to resolve their respective territories.
- The CSV file `rbm_canonical_site_registry_...csv` size is 979,609 bytes, and contains 2347 rows (discrepancy of 106 rows from pass 217 markdown documentation due to addition of pass 218-220 entries). We synced the compile and summaries datasets to bring them in perfect alignment with the registry for Uzbekistan.
- Pytest suite successfully executed and all 161 test cases passed.
