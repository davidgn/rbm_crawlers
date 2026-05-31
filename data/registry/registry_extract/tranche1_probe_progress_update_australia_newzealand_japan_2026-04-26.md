# Tranche 1 probe progress update — Australia, New Zealand, Japan — 2026-04-26

## Newly completed probe/checkpoints

1. Australia — BookPeople / Love Your Bookshop Find a Bookshop
   - Classification: member-grade / network-grade.
   - Harvest posture: profile crawl needed; no public bulk export confirmed.
   - Positive: public `/store/<slug>/` profiles expose name, description, address or Online only, email, phone, website, and service/badge flags.
   - Governance: online-only and secondhand/antiquarian profiles must not be promoted as physical general bookstores.

2. New Zealand — Booksellers Aotearoa NZ / BookHub
   - Classification: member-grade / network-grade with inventory-commerce overlay.
   - Harvest posture: Booksellers Aotearoa profile crawl + BookHub/Circle endpoint probe needed.
   - Positive: `/find-a-bookseller` profile links expose directory rows and profile pages with address/contact fields.
   - Governance: BookHub inventory/stock observations must be linked back to store entities, not treated as independent store rows.

3. Japan — e-hon + 日本の古本屋/Kosho split probe
   - Classification: split source: e-hon pickup-network + Kosho used-antiquarian association/marketplace directory.
   - Harvest posture: e-hon parameter discovery + Kosho prefecture/profile crawl needed.
   - Positive: Kosho has rich used/antiquarian profile pages; e-hon has a national bookstore-pickup network.
   - Governance: Japan must remain split by source layer; e-hon pickup partners and Kosho used/antiquarian dealers are not equivalent. Kosho includes office-only/no-storefront dealers.

## Current Tranche 1 status after this pass

Completed governed probe packages now exist for: Mexico, Argentina, Spain, Poland, South Africa, United States, Canada, Australia, New Zealand, and Japan.

## Immediate next governed move

Consolidate the Tranche 1 manifest and choose one of two paths:

- **Executable harvest path:** run networked harvesters for sources with confirmed crawl/export scaffolds, starting with Mexico SIC raw JSON/CSV and then Kosho/Booksellers/BookPeople profile crawls.
- **Discovery extension path:** begin Tranche 2 high-quality registry/network probes, likely Europe and MENA/Africa candidates from the original global source matrix.

Recommendation: take the executable harvest path first, because Tranche 1 now has enough source diversity and governance coverage to test the normalization model end-to-end.
