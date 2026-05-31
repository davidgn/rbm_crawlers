# New Zealand Booksellers Aotearoa / BookHub probe report — 2026-04-26

## Governed classification

**Source family:** Booksellers Aotearoa NZ member/directory surface plus BookHub inventory-commerce platform.

**Classification:** `member-grade / network-grade` with a strong `inventory-commerce overlay`. This is not a statutory/open-data national registry, and no bulk CSV/API was confirmed in this probe.

## Live evidence captured

- Booksellers Aotearoa NZ describes itself as the trade association for booksellers in New Zealand, founded in 1921, and says it helps bookselling businesses through advocacy, information, products/services, education, professional development, and industry marketing.
- The `Find a Bookseller` page exposes a public directory with filters by region and services. Service filters include redeeming Booksellers Tokens, redeeming gift cards, selling tokens, selling gift cards, and `On BookHub`.
- The public directory page visibly exposes profile links and compact descriptions for many stores; in the visible no-JS page, profile links run from Abacus Educational Book Supply through Whanga Books, indicating about 93 visible member-profile links on that surface in this probe.
- Individual Booksellers Aotearoa profiles expose name, description, address when present, email, phone, website, and sometimes social handles.
- BookHub’s About page says BookHub was founded in 2023 by BooksellersNZ and brings together the shelves of over 70 independent bookshops across Aotearoa in one place. It explains the user flow: choose a book, see which member bookshops have stock, pick a shop, and go to that store.
- BookHub product/category pages expose stock-count and `Find Store` signals; these are inventory observations, not standalone store records.
- Launch coverage says BookHub was created by Booksellers Aotearoa NZ and CircleSoft/Circle in collaboration with independent bookstores, supporting the interpretation that BookHub is a store-linked inventory overlay rather than a separate registry.

## Sample rows / role-classification lessons

1. `Scorpio Books` is a clean physical independent bookstore profile with full address, email, phone, and website.
2. `Timaru Booksellers` is a clean physical independent bookstore profile with address, email, phone, website, and social link.
3. `The Nile` is a member/directory entry with website but no physical address visible in the sample and description indicating online/marketplace behavior; stage it as `online_or_marketplace_retailer`/`review_needed`, not a local physical bookshop.

## Extraction plan

1. Crawl Booksellers Aotearoa `Find a Bookseller` profile links as the primary entity directory.
2. Parse each `/bookseller/<slug>` profile for name, description, address, email, phone, website, and social handles.
3. Preserve region/service-filter facets where rendered or endpoint-recoverable.
4. Independently probe BookHub/Circle endpoints: product pages and `Find Store` signals should produce inventory-by-store observations linked back to store entities.
5. Reconcile Booksellers profile rows against BookHub participating-store names; do not treat BookHub inventory rows as new store entities unless a store profile is found.

## Limits of this checkpoint

This package does not include a full rendered crawl or endpoint extraction. The visible directory count and sample profile rows are evidence checkpoints, not final national counts.

## Key URLs

- https://www.booksellers.co.nz/
- https://www.booksellers.co.nz/find-a-bookseller
- https://bookhub.co.nz/pages/8857-AboutUs
- https://bookhub.co.nz/
- https://authors.org.nz/introducing-bookhub-the-game-changing-online-sales-tool-for-nz/
