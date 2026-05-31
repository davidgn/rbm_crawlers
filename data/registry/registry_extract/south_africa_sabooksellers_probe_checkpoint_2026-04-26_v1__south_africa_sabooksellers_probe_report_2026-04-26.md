# South Africa SA Booksellers probe report — 2026-04-26

## Decision

**South Africa / SA Booksellers** is classified as **member-grade / industry-network directory**, not a clean national bookstore registry.

The source is highly useful because the public `/bookshops/` page exposes a rendered current-members table with bookstore/contact/address/phone fields. It is also messy: the table mixes true bookstore/bookshop candidates with stationers, publishers, distributors, logistics/services, online retailers, institutional bodies, head offices, duplicate-ish rows, and apparent accounting/noise artifacts.

## Source scope

SA Booksellers presents itself as South Africa's professional association of booksellers and says it serves booksellers. Its About page frames SABA as a representative association for professional booksellers, but also says it promotes relationships with book-value-chain stakeholders. That wider scope explains why the member list contains more than storefront bookstores.

## Observed harvest surface

Primary URL: https://www.sabooksellers.com/bookshops/

The page includes:

- a **How to join** section;
- a **Current members** heading;
- a rendered header with these raw fields:
  - `Bookstore`
  - `EmailAddress`
  - `FirstName`
  - `SAAddressLine1`
  - `SAAddressLine2`
  - `SAAddressLine3`
  - `SAAddressLine4`
  - `SACity`
  - `SARegion`
  - `SAPostalCode`
  - `PhoneNumber`

The web-viewed parsed text shows raw row-like lines from line 12 through line 260. If each rendered line were treated as one candidate line, that is **249 raw candidate lines**, but this is **not** a clean row count and must not be promoted as a bookstore count.

## Count governance

Do **not** treat SABA as a clean bookstore-count authority yet.

Current governed count posture:

1. **249 raw rendered candidate lines** observed from parsed line span 12–260.
2. This includes non-entity/accounting artifacts such as `Admin Charge`, `Bank Transaction`, `CREDIT INTEREST`, `Digital Payment...`, `Monthly Acc Fee`, and `Transaction Charge`.
3. It includes book-trade but non-store rows such as publishers, distributors, logistics providers, online retailers, councils, and professional services.
4. It includes chain/head-office rows where separate branch expansion would be needed.
5. Therefore, the right import target is a **staging/member-grade table**, not the canonical bookstore-location table.

## Entity-role rules

Suggested initial role classifier:

- `bookshop_or_bookseller`: names containing Bookshop, Bookstore, Booksellers, Books, Book Nook, Book Lounge, etc., unless contradicted.
- `stationery_hybrid`: Stationers, Office National, school/office supplies, educational supplies.
- `publisher_or_institutional_member`: Publishers, Press, University Press, PASA, Book Development Council, Pearson, Penguin Random House, Macmillan, Cambridge University Press, etc.
- `distributor_or_supply_chain`: Distribution, Distributors, logistics/courier entities.
- `online_retail_or_marketplace_member`: Takealot, Snapplify-like platform rows.
- `bookstore_chain_head_office`: rows explicitly marked Head Office.
- `campus_bookshop_or_bookseller`: university/campus shop rows.
- `non_entity_noise`: transaction/admin/accounting rows.

## Extraction posture

Recommended full-harvest routine:

1. Fetch and archive the raw HTML from `/bookshops/`.
2. Parse all text/table-like blocks after `Current members` and before footer.
3. Preserve raw rendered line, raw HTML block, and source line/order.
4. Use email as the first strong delimiter, but do not assume it is always present.
5. Extract phone from terminal numeric/phone-like token; preserve raw phone and compute normalized phone separately.
6. Run role classifier and noise exclusion layer.
7. Reconcile obvious duplicate/head-office rows, but preserve original rows as evidence.
8. Promote only `bookshop_or_bookseller`, `campus_bookshop_or_bookseller`, and selected `stationery_hybrid` rows to canonical candidate bookstore table after review.

## Files in this checkpoint

- `south_africa_sabooksellers_field_map_2026-04-26.csv`
- `south_africa_sabooksellers_source_evidence_ledger_2026-04-26.csv`
- `south_africa_sabooksellers_normalized_sample_2026-04-26.csv`
- `south_africa_sabooksellers_probe_summary_2026-04-26.json`
- `south_africa_sabooksellers_harvester_2026-04-26.py`
- `bookstore_registry_harvest_manifest_tranche1_2026-04-26_south_africa_probe_update.csv`
- `south_africa_sabooksellers_probe_artifact_manifest_2026-04-26.csv`

## Governed next move

Proceed to **United States ABA BookWeb / IndieBound** in tranche order, unless the user wants the South Africa SABA harvester run externally first.
